class Employee < ActiveRecord::Base
  belongs_to  :employee_category
  belongs_to  :employee_position
  belongs_to  :employee_grade
  belongs_to  :employee_department
  belongs_to  :nationality, :class_name => 'Country'
  belongs_to  :user
  belongs_to  :reporting_manager,:class_name => "Employee"
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  has_many    :employees_subjects
  has_many    :subjects ,:through => :employees_subjects
  has_many    :timetable_entries
  has_many    :employee_bank_details
  has_many    :employee_additional_details
  has_many    :apply_leaves
  has_many    :monthly_payslips
  has_many    :employee_salery_structures
  has_many    :finance_transactions, :as => :payee
  has_many    :employee_attendances
  has_many    :individual_payslip_categories
 after_save :create_user_account

validates :first_name, presence: true,length:{minimum:1, maximum:20}, format:{ with: /\A[a-zA-Z_" "-]+\Z/,message:"allows only letters"}    
  validates :middle_name,length:{minimum:1,maximum:20}, format:{ with: /\A[a-zA-Z_" "-]+\Z/,message:"allows only letters"},allow_blank: true
  validates :last_name,presence: true,length:{minimum:1, maximum:20}, format:{ with: /\A[a-zA-Z_" "-]+\Z/,message:"allows only letters"}
  validates :email,format:{with: /\A[a-zA-Z0-9._-]+@([a-zA-Z0-9]+\.)+[a-zA-Z]{2,4}+\z/},allow_blank: true
  validates :date_of_birth, presence: true
  validates :employee_department,presence: true
  validates :employee_category,presence: true
  validates :employee_position,presence: true
  validates :employee_grade, presence: true
  validates :qualification,length:{minimum:1,maximum:30},allow_blank: true
  validates :experience_detail,length:{minimum:1,maximum:30},allow_blank: true
  validates :father_name,length:{minimum:1,maximum:20},format:{with:/\A[a-z A-Z_" "-]+\Z/,message:"allows only letters"},allow_blank: true
  validates :mother_name,length:{minimum:1,maximum:20},format:{with:/\A[a-z A-Z " "-]+\Z/,message:"allows only letters"} ,allow_blank: true
  
  validates :home_address_line1,presence: true,length:{:in=> 1..30},on: :update
  validates :home_address_line2,length:{:in=>1..30},allow_blank: true
  validates :home_city,presence: true, format: { with: /\A[a-z A-Z]+\z/,message: "only allows letters" },
              length:{:in=> 1..30},on: :update
  validates :home_state,presence: true,format: { with: /\A[a-z A-Z]+\z/,message: "only allows letters" },
              length:{:in=> 1..30},on: :update
  validates :home_pin_code,presence: true,numericality: { only_integer: true },
                 length:{minimum:6,maximum:6},on: :update
  validates :office_address_line1,length:{:in=>1..30},allow_blank:true
  validates :office_address_line2,length:{:in=>1..30},allow_blank:true
  validates :office_city,format:{ with: /\A[a-z A-Z]+\z/,message:"only allows letters" },
              length:{:in=> 1..30},allow_blank:true
  validates :office_state,format: { with: /\A[a-z A-Z]+\z/,message:"only allows letters"},
               length:{:in=>1..30},allow_blank:true
  validates :office_pin_code,numericality:{only_integer:true},
                  length:{minimum:6,maximum:6},allow_blank:true
  validates :office_phone1,numericality:{ only_integer: true},
                   length:{minimum:6,maximum:11}  ,allow_blank:true
  validates :office_phone2,numericality:{only_integer: true},
                   length:{minimum:6,maximum:11},allow_blank:true
  validates :mobile_phone,numericality:{only_integer:true},
                   length:{minimum:10,maximum:10},allow_blank:true 
  validates :email,format:{with: /\A[a-zA-Z0-9._-]+@([a-zA-Z0-9]+\.)+[a-zA-Z]{2,4}+\z/},allow_blank: true
  validates :fax,numericality:{only_integer:true},
                    length:{minimum:6,maximum:11},allow_blank:true
 validates :home_phone,numericality:{only_integer:true},
                    length:{minimum:6,maximum:11},allow_blank:true

 validates :home_country_id,presence: true,on: :update

  def archived_employee
    employee_attributes = self.attributes  
    self.update_attributes(status_description:status) 
    employee_attributes["former_id"]= self.id
    archived_employee = ArchivedEmployee.create(employee_attributes)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def update_payroll(payroll_id,amount)
    @payrolls=PayrollCategory.where(payroll_category_id:payroll_id)
      unless @payrolls.nil?
          @payrolls.each do |payrol|
            p_amount=(amount.to_f*payrol.percentage.to_f)/100
            @payroll_salary=EmployeeSaleryStructure.where(employee_id: self.id,payroll_category_id: payrol.id).take
            if @payroll_salary.nil?
              EmployeeSaleryStructure.create(employee_id: self.id,payroll_category_id: payrol.id,amount:p_amount)
            else
              @payroll_salary.update(amount:p_amount)
            end
            update_payroll(payrol.id,p_amount)
          end
      end
  end

  private
  def create_user_account
    user = User.new do |u|
      u.first_name, u.last_name, u.username, u.employee_id = first_name, last_name, employee_number, id
      u.password = "#{employee_number.to_s}123456"
      u.role = 'Employee'
      u.email = ( email == ''or User.find_by_email(email) ) ? "#{first_name+last_name+employee_number.to_s}@axenic.com" : email
    end
    user.save
  end

  end


       
Rails.application.routes.draw do

devise_for :users
mount Ckeditor::Engine => '/ckeditor'

#Ravikiran indoor module
get 'indoors/indoor_dashboard'
get 'indoors/indoor_patient_admission_form'
get 'indoors/advance_booking_form'
get 'indoors/other_service_entry_form'
get 'indoors/doctor_visit_form'
get 'indoors/bed_transfer'
get 'indoors/ot_billing'
get 'indoors/indoor_money_reciept'
get 'indoors/discharge_details'
get 'indoors/final_bill'
get 'indoors/manual_final_bill'
get 'indoors/ipd_clinical_report'
get 'indoors/ipd_registration_form'

devise_for :users
mount Ckeditor::Engine => '/ckeditor'


get 'setting/course_batch'
get 'general_settings/all'
get 'general_settings/none'
get 'courses/:id/grouped_batches',to: 'courses#grouped_batches',as: 'courses_grouped_batches'
post 'courses/create_batch_group'
get 'courses/edit_batch_group'
patch 'courses/update_batch_group'
delete 'courses/delete_batch_group'
get 'courses/:id/assign_all',to: 'courses#assign_all',as: 'courses_assign_all'
get 'courses/:id/remove_all',to: 'courses#remove_all',as: 'courses_remove_all'
get 'batches/:id/display', to: 'batches#display', as: 'batches_display'
get 'batches/select' 
get 'batches/assign_tutor'
post 'batches/assign_tutorial'
post 'batches/:batch_id/assign_employee/',to:'batches#assign_employee',as:'batches_assign_employee'
delete 'batches/:batch_id/remove_employee/',to:'batches#remove_employee',as:'batches_remove_employee'
get 'grading_levels/select'
get 'batch_transfers/select'
get 'batch_transfers/assign_all'
get 'batch_transfers/remove_all'
get 'batch_transfers/student_transfer'
get 'batch_transfers/former_student'
get 'batch_transfers/:batch_id/graduation',to: 'batch_transfers#graduation', as: 'batch_transfers_graduation'
get 'batch_transfers/:batch_id/transfer',to: 'batch_transfers#transfer', as: 'batch_transfers_transfer'
get 'subjects/select'
get 'batches/:batch_id/subjects/subject',to: 'subjects#subject', as: 'batches_subjects_subject'
get 'elective_groups/:elective_group_id/elective_subject',to: 'elective_groups#elective_subject', as: 'elective_groups_elective_subject'
get 'students/search' 
get 'students/search_ajax'
get 'students/view_all'
get 'students/select'  
get 'students/:id/profile',to: 'students#profile',as: 'students_profile'
get 'students/:id/student_profile',to: 'students#student_profile',as: 'students_student_profile'
get 'students/:id/archived_student_profile',to: 'students#archived_student_profile',as: 'students_archived_student_profile'
get 'students/:id/generate_tc',to: 'students#generate_tc',as: 'students_generate_tc'
get 'students/archived_profile'  
get 'students/advanced_search'
get 'students/advanced_student_search'
post 'students/advanced_search_result'
get 'students/:subject_id/elective',to: 'students#elective',as: 'students_elective'
get 'home/dashboard'
get 'students/admission1'
get 'students/admission2'
post 'students/adm_create'
post 'students/archived_student_create'
get 'students/admission2_1'
get 'newscasts/select'
get 'newscasts/display'
get 'students/admission3'
get 'students/edit_immediate_contact'
patch 'students/update_immediate_contact'
patch 'students/update_immediatecontact'
get 'students/previous_data'
post 'students/previous_data_create'
get 'students/previous_subject'
post 'students/previous_subject_create'
get 'students/report'
get 'students/recent_exam_report'
get 'students/student_exam_report'
get 'students/subject_wise_report'
get 'students/academic_report'
get 'students/final_report'
get 'students/student_final_report'
get 'students/transcript_report'
get 'students/student_transcript_report'
get 'students/archived_student_transcript_report'
get 'students/archived_report'
get 'students/attendance_report'
get 'students/genrate_report'
get 'students/email'
post 'students/send_email'
get 'students/report_email'
post 'students/send_report_email'
get 'students/change_to_former'
get 'students/delete'
get 'students/remove'
get 'students/dispguardian'
get 'students/archived_student_guardian'
get 'students/addguardian'
post 'students/assign_elective'
get 'students/:subject_id/assign_all',to: 'students#assign_all',as: 'students_assign_all'
get 'students/:subject_id/remove_all',to: 'students#remove_all',as: 'students_remove_all'
get 'students/batch_details'
post 'guardians/addguardian_create',to: 'guardians#addguardian_create',as: 'guardians_addguardian_create'
get 'users/search'
get 'users/select'
get 'users/view_all'
get 'users/view_all_details'
patch 'users/:id/update_password',to:'users#update_password',as:'users_update_password'
get 'users/:id/change_password',to: 'users#change_password',as: 'users_change_password'
get 'class_timings/select'
get 'events/show'
get 'events/showdep'
get 'weekdays/select'
get 'weekdays/index'
post'weekdays/create'
get 'time_tables/select'
get 'time_tables/sub'
get 'time_tables/new'
get 'time_tables/edit_timetable'
get 'time_tables/update_timetable'
patch 'time_tables/update_timetable_values'

get 'time_table_entries/select'
get 'time_table_entries/select_subject'
get 'time_tables/work_allotment'
post'time_tables/work_allotment'
get 'time_tables/new_timetable'
post'time_table_entries/create_time'
post'time_table_entries/assign_time'
get 'exam_reports/report_center'
get 'exam_reports/exam_wise_report'
get 'exam_reports/subject_wise_report'
get 'exam_reports/generate_exam_report'
get 'exam_reports/select_batch'
get 'exam_reports/choose_batch'
get 'exam_reports/generate_subject_report'
get 'exam_reports/grouped_exam_report'
get 'exam_reports/generate_grouped_report'
get 'exam_reports/:exam_group_id/student_exam_report/:student_id',
                    to: 'exam_reports#student_exam_report',as: 'exam_reports_student_exam_report'
get 'exam_reports/:batch_id/student_report/:student_id',
                    to: 'exam_reports#student_report',as: 'exam_reports_student_report'
get 'exam_reports/:exam_group_id/consolidated_report',to: 'exam_reports#consolidated_report',as: 'exam_reports_consolidated_report'
get 'exam_reports/:batch_id/consolidated_archived_report',
                    to: 'exam_reports#consolidated_archived_report',as: 'exam_reports_consolidated_archived_report'
get 'exam_reports/archived_student_report'
get 'exam_reports/select_course'
get 'exam_reports/generate_archived_report'
get 'exam_reports/exam_group_wise_report'
get 'exam_reports/student_ranking_per_subject'
get 'exam_reports/rank_report_batch'
get 'exam_reports/generate_ranking_report'
get 'exam_reports/student_ranking_per_batch'
get 'exam_reports/generate_student_ranking_report'
get 'exam_reports/student_ranking_per_course'
get 'exam_reports/generate_student_ranking_report2'
get 'exam_reports/student_ranking_per_school'
get 'exam_reports/student_ranking_per_attendance'
get 'exam_reports/generate_student_ranking_report3'
get 'exam_reports/view_transcripts'
get 'exam_reports/generate_view_transcripts'
get 'exam_reports/:student_id/archived_student/',to: 'exam_reports#archived_student',as: 'exam_reports_archived_student'
get 'exam_reports/:student_id/student_view_transcripts/',to: 'exam_reports#student_view_transcripts',as: 'exam_reports_student_view_transcripts'
get 'exam_reports/ranking_level_report'
get 'exam_reports/select_mode'
get 'exam_reports/select_rank'
get 'exam_reports/select_rank_mode'
get 'exam_reports/generate_ranking_level_report'
get 'exam_reports/combined_report'
get 'exam_reports/combined_details'
get 'exam_reports/all'
get 'exam_reports/none'
get 'exam_reports/all1'
get 'exam_reports/none1'
get 'exam_reports/generate_combined_report'
get 'exam_reports/exam_wise_students_report'
get 'exam_reports/exam_wise_consolidated_report'
get 'exam_reports/subject_wise_students_report'
get 'exam_reports/grouped_exam_students_report'
get 'exam_reports/archived_students_exam_report'
get 'exam_reports/archived_students_consolidated_report'
get 'exam_reports/subject_wise_ranking_report'
get 'exam_reports/batch_wise_ranking_report'
get 'exam_reports/course_wise_ranking_report'
get 'exam_reports/school_wise_ranking_report'
get 'exam_reports/attendance_wise_ranking_report'
get 'exam_reports/students_transcripts_report'
get 'calender/change' 
get 'calender/event_view'
get 'exam_setting/:course_id/setting',to: 'exam_setting#setting', as: 'course_class_designations'
get 'exam_setting/select'
get 'exam_setting/selectrank'
get 'exam_setting/:course_id/settingrank',to: 'exam_setting#settingrank',as: 'course_ranking_levels'
get 'exam_setting/newrank'
post 'exam_setting/createrank'
get 'exam_setting/:course_id/editRank/:id',to:'exam_setting#editRank',as:'course_ranking_level'
patch 'exam_setting/updateRank'
delete 'exam_setting/:id/destroyRank', to:'exam_setting#destroyRank', as:'exam_setting_destroyRank'
get 'exam_groups/select'
patch 'exam_groups/:id/exam_group_create',to: 'exam_groups#exam_group_create',as: 'exam_groups_exam_group_create'
get 'exam_groups/:id/exams', to:'exam_groups#exams', as:'exam_groups_exams'
get 'exam_groups/connect_exam'
get 'exam_groups/assign_all'
get 'exam_groups/remove_all'
get 'exam_groups/update_connect_exam'
get 'exam_groups/publish_exam'
get 'exam_groups/publish_result'
get 'exam_groups/previous_exam_data'
get 'exam_groups/previous_exam'
get 'exam_groups/previous_exam_group'
get 'exam_groups/previous_exam_details'
get 'exam_groups/previous_exam_scores'
patch 'exam_groups/update_exam_score'
get 'exams/:id/exam_score', to:'exams#exam_score', as:'exam_exam_score'
patch 'exams/update_exam_score'
get 'online_exams/assign_all'
get 'online_exams/remove_all'
post 'online_exams/createQue'
get 'online_exams/onlineView'
get 'online_exams/select'
get 'online_exams/:online_exam_id/queAns',to: 'online_exams#queAns', as: 'online_exams_queAns'
get 'online_exams/:online_exam_id/display',to: 'online_exams#display', as: 'online_exams_display'
delete 'online_exams/:batch_id/destroy/:id',to: 'online_exams#destroy', as: 'online_exams_destroy'
get 'online_exams/editQue/:online_examque_id', to: 'online_exams#editQue', as: 'online_exams_editQue'
patch 'online_exams/updateQue/:online_examque_id',to: 'online_exams#updateQue',as: 'online_exams_updateQue'
get 'online_exams/editOption/:online_examque_id', to: 'online_exams#editOption', as: 'online_exams_editOption'
patch 'online_exams/updateOption/:online_examque_id',to: 'online_exams#updateOption',as: 'online_exams_updateOption'
get 'employees/new_category'
post 'employees/add_category'
get 'employees/:category_id/edit_category', to:'employees#edit_category', as:'employees_edit_category'
patch 'employees/:category_id/update_category', to:'employees#update_category', as:'employees_update_category'
delete 'employees/:id/destroy_category', to:'employees#destroy_category', as:'employees_destroy_category'
get 'employees/new_department'
post 'employees/add_department'
get 'employees/:department_id/edit_department', to:'employees#edit_department', as:'employees_edit_department'
patch 'employees/:department_id/update_department', to:'employees#update_department', as:'employees_update_department'
delete 'employees/:id/destroy_department', to:'employees#destroy_department', as:'employees_destroy_department'
get 'employees/new_position'
post 'employees/add_position'
get 'employees/:position_id/edit_position', to:'employees#edit_position', as:'employees_edit_position'
patch 'employees/:position_id/update_position', to:'employees#update_position', as:'employees_update_position'
delete 'employees/:id/destroy_position', to:'employees#destroy_position', as:'employees_destroy_position'
get 'employees/new_bank_field'
post 'employees/add_bank_field'
get 'employees/:bank_field_id/edit_bank_field', to:'employees#edit_bank_field', as:'employees_edit_bank_field'
patch 'employees/:bank_field_id/update_bank_field', to:'employees#update_bank_field', as:'employees_update_bank_field'
delete 'employees/:id/destroy_bank_field', to:'employees#destroy_bank_field', as:'employees_destroy_bank_field'
get 'employees/new_payroll_category'
post 'employees/add_payroll_category'
get 'employees/:payroll_category_id/edit_payroll_category',to:'employees#edit_payroll_category',as:'employees_edit_payroll_category'
patch 'employees/:payroll_category_id/update_payroll_category', to:'employees#update_payroll_category', as:'employees_update_payroll_category'
delete 'employees/:id/destroy_payroll_category', to:'employees#destroy_payroll_category', as:'employees_destroy_payroll_category'
get 'employees/active_payroll_category'
get 'employees/inactive_payroll_category'
get 'employees/new_grade'
post 'employees/add_grade'
get 'employees/:grade_id/edit_grade',to:'employees#edit_grade', as:'employees_edit_grade' 
patch 'employeess/:grade_id/update_grade',to:'employees#update_grade',as:'employees_update_grade' 
delete 'employees/:id/destroy_grade', to:'employees#destroy_grade', as:'employees_destroy_grade'
get 'employees/employee_management'
get 'employees/subject_assignment'
get 'employees/assign_subject'
get 'employees/assign_subject_disp'
get 'employees/list_emp'
get 'employees/employee_structure'
delete'employees/:id/remove_employee',to:'employees#remove_employee',as:'employees_remove_employee'
post 'employees/:id/assign_employee/department_id',to:'employees#assign_employee',as:'employees_assign_employee'
get 'employees/admission1'
get 'employees/admission2'
get 'employees/view_employee_payslip'
patch 'employees/admission2_create'
post 'employees/admission3_create'
get 'employees/admission3'
get 'employees/admission4'
get 'employees/edit_privilege'
post 'employees/update_privilege'
get 'employees/search'
get 'employees/settings'
get 'employees/change_reporting_manager'
get 'employees/:id/update_reporting_manager_name/:reporting_manager_id',to:'employees#update_reporting_manager_name',as:'employees_update_reporting_manager_name'
patch 'employees/:id/update_reporting_manager',to:'employees#update_reporting_manager',as:'employees_update_reporting_manager'
get 'employees/profile'
get 'employees/search_employee'
get 'employees/search_emp'
get 'employees/viewall_emp'
get 'employees/allemp'
get 'employees/edit_profile'
get 'employees/advance_search'
post 'employees/advance_search_result_pdf'
get 'employees/advance_search_emp'
patch 'employees/update_profile'
patch 'employees/update_edit_profile'
patch 'employees/update_edit_address_profile'
patch 'employees/update_edit_contact_profile'
post 'employees/department_employee_list'
get 'employees/monthly_payslip'
post 'employees/create_monthly_payslip'
post 'employees/create_payslip_category'
get 'employees/payroll_category'
get 'employees/department_payslip'
get 'employees/payslip'
get 'employees/one_click_payslip'
post 'employees/one_click_payslip_generate'
get 'employees/select_employee_department'
post 'employees/view_payslip'
get 'employees/genral_profile'
get 'employees/personal_profile'
get 'employees/address_profile'
get 'employees/contact_profile'
get 'employees/bank_info'
get 'employees/emp_payroll'
get 'employees/remove'
get 'employees/change_to_former'
post 'employees/create_archived_employee'
get 'employees/delete_employee'
get 'employees/employee_profile'
get 'employees/edit_personal_profile'
get 'employees/edit_address_profile'
get 'employees/edit_contact_profile'
get 'employees/edit_bank_info'
patch 'employees/update_bank_details'
get 'employees/personal_profile_pdf'
get 'employees/address_profile_pdf'
get 'employees/contact_profile_pdf'
get 'employees/bank_info_pdf'
get 'employees/archived_employee_profile'
get 'employees/genral_profile_archived'
get 'employees/personal_profile_archived'
get 'employees/address_profile_archived'
get 'employees/contact_profile_archived'
get 'employees/bank_info_archived'
post 'employees/emp_search_result_pdf'
get 'employees/select_month'

get 'employees/payslip_revert'
post 'employees/one_click_payslip_revert'

get 'employee_attendances/new_leave_type'
post 'employee_attendances/add_leave_type'
delete 'employee_attendances/:id/destroy_leave_type',to:'employee_attendances#destroy_leave_type', as:'employee_attendances_destroy_leave_type'
get 'employee_attendances/:id/edit_leave_type',to:'employee_attendances#edit_leave_type', as: 'employee_attendances_edit_leave_type'
patch 'employee_attendances/:id/update_leave_type',to:'employee_attendances#update_leave_type', as: 'employee_attendances_update_leave_type'
get 'employee_attendances/attendance_register'
get 'employee_attendances/select'
get 'employee_attendances/:department_id/display/:next',to:'employee_attendances#display',as: 'employee_attendances_display'
get 'employee_attendances/:employee_id/new_attendance/:attendance_date',to:'employee_attendances#new_attendance',as: 'employee_attendances_new_attendance'
get 'employee_attendances/:id/edit_attendance',to:'employee_attendances#edit_attendance', as: 'employee_attendances_edit_attendance'
patch 'employee_attendances/:id/update_att',to:'employee_attendances#update_att', as: 'employee_attendances_update_att'
delete 'employee_attendances/:id/destroy_attendance',to:'employee_attendances#destroy_attendance', as: 'employee_attendances_destroy_attendance'
get 'employee_attendances/attendance_report'
get 'employee_attendances/select_report'
get 'employee_attendances/:employee_id/report_info',to:'employee_attendances#report_info', as: 'employee_attendances_report_info'
get 'employee_attendances/manual_reset'
get 'employee_attendances/leave_reset_settings'
get 'employee_attendances/leave_reset_all'
get 'employee_attendances/update_employee_leave_reset_all'
get 'employee_attendances/employee_leave_reset_by_department'
get 'employee_attendances/select_department'
get 'employee_attendances/assign_all'
get 'employee_attendances/remove_all'
get 'employee_attendances/update_department_leave_reset'
get 'employee_attendances/employee_leave_reset_by_employee'
post 'employee_attendances/search'
get 'employee_attendances/search_emp'
get 'employee_attendances/employee_leave_detail/:id',to:'employee_attendances#employee_leave_detail',as:'employee_attendances_employee_leave_detail'

get 'attendences/attendence_register'
get 'attendences/select' 
get 'attendences/select_subject'
get 'attendences/:subject_id/display/:next',to:'attendences#display',as: 'attendences_display'
get 'attendences/:student_id/new_attendence/:month_date',to:'attendences#new_attendence',as: 'attendences_new_attendence'
post 'attendences/create_attendence'
get 'attendences/:id/edit_attendence',to:'attendences#edit_attendence',as: 'attendences_edit_attendence'
patch 'attendences/:id/update_attendence',to:'attendences#update_attendence', as:'attendences_update_attendence'
delete 'attendences/:id/delete_attendence',to:'attendences#delete_attendence', as:'attendences_delete_attendence'
get 'attendences/report'
get 'attendences/select_batch'
get 'attendences/generate_report'
get 'attendences/attendence_report'

delete 'time_table_entries/delete_time'
get 'time_tables/selectTime'
get 'time_tables/teachers_timetable'
get 'time_tables/teacher_time_table_display'
get 'time_tables/employee_timetable'
get 'time_tables/time_table_pdf'
get 'time_tables/selectTimeEmployee'
get 'time_tables/timetable'
get 'time_tables/display_institutional_time_table/:next',to:'time_tables#display_institutional_time_table',as:'time_tables_display_institutional_time_table'
get 'finance/fees'
get 'finance/transaction_category'
get 'finance/new_transaction_category'
post 'finance/create_transaction_category'
get 'finance/:id/edit_transaction_category',to:'finance#edit_transaction_category',as:'finance_edit_transaction_category'
patch 'finance/:id/update_transaction_category',to:'finance#update_transaction_category',as:'finance_update_transaction_category'
delete 'finance/:id/delete_transaction_category',to:'finance#delete_transaction_category',as:'finance_delete_transaction_category'
get 'finance/donation'
post 'finance/create_donation'
get 'finance/:id/donation_receipt',to: 'finance#donation_receipt',as:'finance_donation_receipt'
get 'finance/donors'
get 'finance/:id/edit_donation',to: 'finance#edit_donation',as:'finance_edit_donation'
patch 'finance/:id/update_donation',to: 'finance#update_donation',as:'finance_update_donation'
delete 'finance/:id/delete_donation',to: 'finance#delete_donation',as:'finance_delete_donation'
get 'finance/:id/finance_donation_receipt',to:'finance#finance_donation_receipt',as:'donation_receipt'
get 'finance/asset_liability'
get 'finance/asset'
get 'finance/new_asset'
post 'finance/create_asset'
get 'finance/view_asset'
get 'finance/:id/edit_asset',to:'finance#edit_asset',as:'finance_edit_asset'
patch 'finance/:id/update_asset',to:'finance#update_asset',as:'finance_update_asset'
delete 'finance/:id/delete_asset',to:'finance#delete_asset',as:'finance_delete_asset'
get 'finance/asset_list'
get 'finance/:id/each_asset_view',to:'finance#each_asset_view',as:'finance_each_asset_view'
get 'finance/liability'
get 'finance/new_liability'
post 'finance/create_liability'
get 'finance/view_liability'
get 'finance/:id/edit_liability',to:'finance#edit_liability',as:'finance_edit_liability'
patch 'finance/:id/update_liability',to:'finance#update_liability',as:'finance_update_liability'
delete 'finance/:id/delete_liability',to:'finance#delete_liability',as:'finance_delete_liability'
get 'finance/:id/each_liability_view',to:'finance#each_liability_view',as:'finance_each_liability_view'
get 'finance/liability_list'
get 'finance/automatic_transaction'
get 'finance/new_automatic_transaction'
post 'finance/create_automatic_transaction'
get 'finance/:id/edit_automatic_transaction',to:'finance#edit_automatic_transaction',as:'finance_edit_automatic_transaction'
patch 'finance/:id/update_automatic_transaction',to:'finance#update_automatic_transaction',as:'finance_update_automatic_transaction'
delete 'finance/:id/delete_automatic_transaction',to:'finance#delete_automatic_transaction',as:'finance_delete_automatic_transaction'
get 'finance/transactions'
get 'finance/new_expense'
post 'finance/create_expense'
get 'finance/view_expense'
post 'finance/expense_list'
get 'finance/:id/edit_expense',to:'finance#edit_expense',as:'finance_edit_expense'
patch 'finance/:id/update_expense',to:'finance#update_expense',as:'finance_update_expense'
delete 'finance/:id/delete_expense',to:'finance#delete_expense',as:'finance_delete_expense'
get 'finance/finance_expense_report'
get 'finance/new_income'
post 'finance/create_income'
get 'finance/view_income'
post 'finance/income_list'
get 'finance/:id/edit_income',to:'finance#edit_income',as:'finance_edit_income'
patch 'finance/:id/update_income',to:'finance#update_income',as:'finance_update_income'
delete 'finance/:id/delete_income',to:'finance#delete_income',as:'finance_delete_income'
get 'finance/finance_income_report'
get 'finance/transaction_report'
post 'finance/transactions_list'
get 'finance/finance_transaction_report'
get 'finance/compare_report'
post 'finance/transactions_comparison'
get 'finance/master_fees'
get 'finance/new_master_category'
get 'finance/assign_batch'
get 'finance/remove_batch'
post 'finance/create_master_category'
get 'finance/fees_list'
get 'finance/:batch_id/edit_master_category/:id',to:'finance#edit_master_category',as:'finance_edit_master_category'
patch 'finance/:batch_id/update_master_category/:id',to:'finance#update_master_category',as:'finance_update_master_category'
delete 'finance/:batch_id/delete_master_category/:id',to:'finance#delete_master_category',as:'finance_delete_master_category'
get 'finance/new_fees_particular'
post 'finance/create_fees_particular'
get 'finance/admission_no'
get 'finance/category'
get 'finance/category_batch'
get 'finance/select_all'
get 'finance/select_none'
get 'finance/:id/master_category_particular',to:'finance#master_category_particular',as:'finance_master_category_particular'
get 'finance/:id/new_particular_fee',to:'finance#new_particular_fee',as:'finance_new_particular_fee'
post 'finance/:batch_id/create_particular_fee/:id',to:'finance#create_particular_fee',as:'finance_create_particular_fee'
get 'finance/:id/student_admission_no',to:'finance#student_admission_no',as:'finance_student_admission_no'
get 'finance/:id/student_category',to:'finance#student_category',as:'finance_student_category'
get 'finance/:master_id/edit_particular_fee/:id',to:'finance#edit_particular_fee',as:'finance_edit_particular_fee'
patch 'finance/:master_id/update_particular_fee/:id',to:'finance#update_particular_fee',as:'finance_update_particular_fee'
delete 'finance/:master_id/delete_particular_fee/:id',to:'finance#delete_particular_fee',as:'finance_delete_particular_fee'
get 'finance/fee_discounts'
get 'finance/new_fee_discount'
post 'finance/create_fee_discount'
get 'finance/discount_type'
get 'finance/fee_category'
get 'finance/discount_view'
get 'finance/:batch_id/edit_fee_discount/:master_id',to:'finance#edit_fee_discount',as:'finance_edit_fee_discount'
patch 'finance/:batch_id/update_fee_discount/:master_id',to:'finance#update_fee_discount',as:'finance_update_fee_discount'
delete 'finance/:batch_id/delete_fee_discount/:master_id',to:'finance#delete_fee_discount',as:'finance_delete_fee_discount'
get 'finance/fee_collection'
get 'finance/new_fee_collection'
post 'finance/create_fee_collection'
get 'finance/fee_collection_view'
get 'finance/view_fee_collection'
get 'finance/:batch_id/edit_fee_collection/:id',to:'finance#edit_fee_collection',as:'finance_edit_fee_collection'
patch 'finance/:batch_id/update_fee_collection/:id',to:'finance#update_fee_collection',as:'finance_update_fee_collection'
delete 'finance/:batch_id/delete_fee_collection/:id',to:'finance#delete_fee_collection',as:'finance_delete_fee_collection'
get 'finance/:id/collection_details_view',to:"finance#collection_details_view",as:"finance_collection_details_view"
get 'finance/fees_submission'
get 'finance/fees_submission_batch'
get 'finance/fee_collection_date'
get 'finance/student_fees'
get 'finance/fees_submission_student'
get 'finance/student_fees_details'
post 'finance/pay_fee'
post 'finance/pay_fine'
get 'finance/student_fee_receipt'
get 'finance/search_student'
get 'finance/fees_collection_student',to:'finance#fees_collection_student',as:'finance_fees_collection_student'
get 'finance/student_fees_submission'
get 'finance/fees_structure'
get 'finance/student_search'
get 'finance/fee_collection_structure'
get 'finance/student_fees_structure'
get 'finance/fee_structure'
get 'finance/fees_defaulters'
get 'finance/pay_fees_defaulters'
get 'finance/fees_defaulters_list'
get 'finance/batch_choice'
get 'finance/collection_choice'
get 'finance/defaulter_students'
get 'finance/income_details'
get 'finance/expense_details'
get 'finance/payslip'
get 'finance/view_monthly_payslip'
get 'finance/approve_monthly_payslip'
get 'finance/approve_salary'
get 'finance/approve'
post 'finance/view_payslip'
get 'finance/employee_monthly_payslip'
get 'finance/view_employee_payslip'
get 'finance/employee_payslip'
get 'employee_attendances/employee_wise_leave_reset/:id',to:'employee_attendances#employee_wise_leave_reset',as:'employee_attendances_employee_wise_leave_reset'
get 'exam_setting/:course_id/increase_priority/:id',to:'exam_setting#increase_priority',as:'exam_setting_increase_priority'
get 'exam_setting/:course_id/decrease_priority/:id',to:'exam_setting#decrease_priority',as:'exam_setting_decrease_priority'
get 'employees/employee_individual_payslip_pdf'
get 'employee_attendances/attendance_report_pdf'
delete 'time_tables/time_table_delete'


#common master#
#doctor master


get 'masters/common_master'
get 'masters/doctor_master'
get 'masters/add_doctor_master'
get 'masters/phar'

#----------OutDoors------------------------------------#
get 'outdoors/new_registration'

#common master#


get 'masters/outdoor_patient_master'

get 'masters/diagonostic_master'
get 'masters/store_master'
#doctor master
get 'common_master/common_master'
get 'common_master/doctor_master'
get 'common_master/area_master'

get 'common_master/indoor_patient_master'
get 'common_master/bed_master'
get 'common_master/ot_master'

get 'common_master/outdoor_patient_master'


get 'common_master/view_doctor_master'


get 'common_master/new_doctor_master'
post 'common_master/create_doctor_master'
get 'common_master/:id/edit_doctor_master',to: 'common_master#edit_doctor_master',as:'common_master_edit_doctor_master'
patch 'common_master/:id/update_doctor_master',to: 'common_master#update_doctor_master',as:'common_master_update_doctor_master'
delete 'common_master/:id/delete_doctor_master',to: 'common_master#delete_doctor_master',as:'common_master_delete_doctor_master'

#referred doctor master
get 'common_master/new_referred_doctor_master'
post 'common_master/create_referred_doctor_master'
get 'common_master/:id/edit_referred_doctor_master',to: 'common_master#edit_referred_doctor_master',as:'common_master_edit_referred_doctor_master'
patch 'common_master/:id/update_referred_doctor_master',to: 'common_master#update_referred_doctor_master',as:'common_master_update_referred_doctor_master'
delete 'common_master/:id/delete_referred_doctor_master',to: 'common_master#delete_referred_doctor_master',as:'common_master_delete_referred_doctor_master'

#specialized master
get 'common_master/new_specialized_master'
post 'common_master/create_specialized_master'
get 'common_master/:id/edit_specialized_master',to: 'common_master#edit_specialized_master',as:'common_master_edit_specialized_master'
patch 'common_master/:id/update_specialized_master',to: 'common_master#update_specialized_master',as:'common_master_update_specialized_master'
delete 'common_master/:id/delete_specialized_master',to: 'common_master#delete_specialized_master',as:'common_master_delete_specialized_master'

#shift master
get 'common_master/new_shift_master'
post 'common_master/create_shift_master'
get 'common_master/:id/edit_shift_master',to: 'common_master#edit_shift_master',as:'common_master_edit_shift_master'
patch 'common_master/:id/update_shift_master',to: 'common_master#update_shift_master',as:'common_master_update_shift_master'
delete 'common_master/:id/delete_shift_master',to: 'common_master#delete_shift_master',as:'common_master_delete_shift_master'

#doctor commission
get 'common_master/new_doctor_commission'
post 'common_master/create_doctor_commission'
get 'common_master/:id/edit_doctor_commission',to: 'common_master#edit_doctor_commission',as:'common_master_edit_doctor_commission'
patch 'common_master/:id/update_doctor_commission',to: 'common_master#update_doctor_commission',as:'common_master_update_doctor_commission'
delete 'common_master/:id/delete_doctor_commission',to: 'common_master#delete_doctor_commission',as:'common_master_delete_doctor_commission'

#state master
get 'common_master/new_state_master'
post 'common_master/create_state_master'
get 'common_master/:id/edit_state_master',to: 'common_master#edit_state_master',as:'common_master_edit_state_master'
patch 'common_master/:id/update_state_master',to: 'common_master#update_state_master',as:'common_master_update_state_master'
delete 'common_master/:id/delete_state_master',to: 'common_master#delete_state_master',as:'common_master_delete_state_master'

#city master
get 'common_master/new_city_master'
post 'common_master/create_city_master'
get 'common_master/:id/edit_city_master',to: 'common_master#edit_city_master',as:'common_master_edit_city_master'
patch 'common_master/:id/update_city_master',to: 'common_master#update_city_master',as:'common_master_update_city_master'
delete 'common_master/:id/delete_city_master',to: 'common_master#delete_city_master',as:'common_master_delete_city_master'

#family master
get 'common_master/new_family_master'
post 'common_master/create_family_master'
get 'common_master/:id/edit_family_master',to: 'common_master#edit_family_master',as:'common_master_edit_family_master'
patch 'common_master/:id/update_family_master',to: 'common_master#update_family_master',as:'common_master_update_family_master'
delete 'common_master/:id/delete_family_master',to: 'common_master#delete_family_master',as:'common_master_delete_family_master'

#ocupation master
get 'common_master/new_ocupation_master'
post 'common_master/create_ocupation_master'
get 'common_master/:id/edit_ocupation_master',to: 'common_master#edit_ocupation_master',as:'common_master_edit_ocupation_master'
patch 'common_master/:id/update_ocupation_master',to: 'common_master#update_ocupation_master',as:'common_master_update_ocupation_master'
delete 'common_master/:id/delete_ocupation_master',to: 'common_master#delete_ocupation_master',as:'common_master_delete_ocupation_master'

#religion master
get 'common_master/new_religion_master'
post 'common_master/create_religion_master'
get 'common_master/:id/edit_religion_master',to: 'common_master#edit_religion_master',as:'common_master_edit_religion_master'
patch 'common_master/:id/update_religion_master',to: 'common_master#update_religion_master',as:'common_master_update_religion_master'
delete 'common_master/:id/delete_religion_master',to: 'common_master#delete_religion_master',as:'common_master_delete_religion_master'

#bank master
get 'common_master/new_bank_master'
post 'common_master/create_bank_master'
get 'common_master/:id/edit_bank_master',to: 'common_master#edit_bank_master',as:'common_master_edit_bank_master'
patch 'common_master/:id/update_bank_master',to: 'common_master#update_bank_master',as:'common_master_update_bank_master'
delete 'common_master/:id/delete_bank_master',to: 'common_master#delete_bank_master',as:'common_master_delete_bank_master'

#company master
get 'common_master/new_company_master'
post 'common_master/create_company_master'
get 'common_master/:id/edit_company_master',to: 'common_master#edit_company_master',as:'common_master_edit_company_master'
patch 'common_master/:id/update_company_master',to: 'common_master#update_company_master',as:'common_master_update_company_master'
delete 'common_master/:id/delete_company_master',to: 'common_master#delete_company_master',as:'common_master_delete_company_master'

#diagnosis master
get 'common_master/new_diagnosis_master'
post 'common_master/create_diagnosis_master'
get 'common_master/:id/edit_diagnosis_master',to: 'common_master#edit_diagnosis_master',as:'common_master_edit_diagnosis_master'
patch 'common_master/:id/update_diagnosis_master',to: 'common_master#update_diagnosis_master',as:'common_master_update_diagnosis_master'
delete 'common_master/:id/delete_diagnosis_master',to: 'common_master#delete_diagnosis_master',as:'common_master_delete_diagnosis_master'

#group master
get 'common_master/new_group_master'
post 'common_master/create_group_master'
get 'common_master/:id/edit_group_master',to: 'common_master#edit_group_master',as:'common_master_edit_group_master'
patch 'common_master/:id/update_group_master',to: 'common_master#update_group_master',as:'common_master_update_group_master'
delete 'common_master/:id/delete_group_master',to: 'common_master#delete_group_master',as:'common_master_delete_group_master'

#service master
get 'common_master/new_service_master'
post 'common_master/create_service_master'
get 'common_master/:id/edit_service_master',to: 'common_master#edit_service_master',as:'common_master_edit_service_master'
patch 'common_master/:id/update_service_master',to: 'common_master#update_service_master',as:'common_master_update_service_master'
delete 'common_master/:id/delete_service_master',to: 'common_master#delete_service_master',as:'common_master_delete_service_master'

#dose master
get 'common_master/new_dose_master'
post 'common_master/create_dose_master'
get 'common_master/:id/edit_dose_master',to: 'common_master#edit_dose_master',as:'common_master_edit_dose_master'
patch 'common_master/:id/update_dose_master',to: 'common_master#update_dose_master',as:'common_master_update_dose_master'
delete 'common_master/:id/delete_dose_master',to: 'common_master#delete_dose_master',as:'common_master_delete_dose_master'

#age group master
get 'common_master/new_age_group_master'
post 'common_master/create_age_group_master'
get 'common_master/:id/edit_age_group_master',to: 'common_master#edit_age_group_master',as:'common_master_edit_age_group_master'
patch 'common_master/:id/update_age_group_master',to: 'common_master#update_age_group_master',as:'common_master_update_age_group_master'
delete 'common_master/:id/delete_age_group_master',to: 'common_master#delete_age_group_master',as:'common_master_delete_age_group_master'

#vaccines master
get 'common_master/new_vaccines_master'
post 'common_master/create_vaccines_master'
get 'common_master/:id/edit_vaccines_master',to: 'common_master#edit_vaccines_master',as:'common_master_edit_vaccines_master'
patch 'common_master/:id/update_vaccines_master',to: 'common_master#update_vaccines_master',as:'common_master_update_vaccines_master'
delete 'common_master/:id/delete_vaccines_master',to: 'common_master#delete_vaccines_master',as:'common_master_delete_vaccines_master'

#floor master
get 'common_master/new_floor_master'
post 'common_master/create_floor_master'
get 'common_master/:id/edit_floor_master',to: 'common_master#edit_floor_master',as:'common_master_edit_floor_master'
patch 'common_master/:id/update_floor_master',to: 'common_master#update_floor_master',as:'common_master_update_floor_master'
delete 'common_master/:id/delete_floor_master',to: 'common_master#delete_floor_master',as:'common_master_delete_floor_master'

#ward master
get 'common_master/new_ward_master'
post 'common_master/create_ward_master'
get 'common_master/:id/edit_ward_master',to: 'common_master#edit_ward_master',as:'common_master_edit_ward_master'
patch 'common_master/:id/update_ward_master',to: 'common_master#update_ward_master',as:'common_master_update_ward_master'
delete 'common_master/:id/delete_ward_master',to: 'common_master#delete_ward_master',as:'common_master_delete_ward_master'

#bed master
get 'common_master/new_bed_master'
post 'common_master/create_bed_master'
get 'common_master/:id/edit_bed_master',to: 'common_master#edit_bed_master',as:'common_master_edit_bed_master'
patch 'common_master/:id/update_bed_master',to: 'common_master#update_bed_master',as:'common_master_update_bed_master'
delete 'common_master/:id/delete_bed_master',to: 'common_master#delete_bed_master',as:'common_master_delete_bed_master'

#ot master
get 'common_master/new_ot_master'
post 'common_master/create_ot_master'
get 'common_master/:id/edit_ot_master',to: 'common_master#edit_ot_master',as:'common_master_edit_ot_master'
patch 'common_master/:id/update_ot_master',to: 'common_master#update_ot_master',as:'common_master_update_ot_master'
delete 'common_master/:id/delete_ot_master',to: 'common_master#delete_ot_master',as:'common_master_delete_ot_master'

#ot slot master
get 'common_master/new_ot_slot_master'
post 'common_master/create_ot_slot_master'
get 'common_master/:id/edit_ot_slot_master',to: 'common_master#edit_ot_slot_master',as:'common_master_edit_ot_slot_master'
patch 'common_master/:id/update_ot_slot_master',to: 'common_master#update_ot_slot_master',as:'common_master_update_ot_slot_master'
delete 'common_master/:id/delete_ot_slot_master',to: 'common_master#delete_ot_slot_master',as:'common_master_delete_ot_slot_master'

#ot type master
get 'common_master/new_ot_type_master'
post 'common_master/create_ot_type_master'
get 'common_master/:id/edit_ot_type_master',to: 'common_master#edit_ot_type_master',as:'common_master_edit_ot_type_master'
patch 'common_master/:id/update_ot_type_master',to: 'common_master#update_ot_type_master',as:'common_master_update_ot_type_master'
delete 'common_master/:id/delete_ot_type_master',to: 'common_master#delete_ot_type_master',as:'common_master_delete_ot_type_master'

#opd department type master
get 'common_master/new_opd_department_type_master'
post 'common_master/create_opd_department_type_master'
get 'common_master/:id/edit_opd_department_type_master',to: 'common_master#edit_opd_department_type_master',as:'common_master_edit_opd_department_type_master'
patch 'common_master/:id/update_opd_department_type_master',to: 'common_master#update_opd_department_type_master',as:'common_master_update_opd_department_type_master'
delete 'common_master/:id/delete_opd_department_type_master',to: 'common_master#delete_opd_department_type_master',as:'common_master_delete_opd_department_type_master'

#diet master
get 'common_master/new_diet_master'
post 'common_master/create_diet_master'
get 'common_master/:id/edit_diet_master',to: 'common_master#edit_diet_master',as:'common_master_edit_diet_master'
patch 'common_master/:id/update_diet_master',to: 'common_master#update_diet_master',as:'common_master_update_diet_master'
delete 'common_master/:id/delete_diet_master',to: 'common_master#delete_diet_master',as:'common_master_delete_diet_master'

#pharmacy master#
#purchase tax master
get 'pharmacy_master/view_purchase_tax_master'
get 'pharmacy_master/new_purchase_tax_master'
post 'pharmacy_master/create_purchase_tax_master'
get 'pharmacy_master/:id/edit_purchase_tax_master',to: 'pharmacy_master#edit_purchase_tax_master',as:'pharmacy_master_edit_purchase_tax_master'
patch 'pharmacy_master/:id/update_purchase_tax_master',to: 'pharmacy_master#update_purchase_tax_master',as:'pharmacy_master_update_purchase_tax_master'
delete 'pharmacy_master/:id/delete_purchase_tax_master',to: 'pharmacy_master#delete_purchase_tax_master',as:'pharmacy_master_delete_purchase_tax_master'

#supplier master
get 'pharmacy_master/view_supplier_master'
get 'pharmacy_master/new_supplier_master'
post 'pharmacy_master/create_supplier_master'
get 'pharmacy_master/:id/edit_supplier_master',to: 'pharmacy_master#edit_supplier_master',as:'pharmacy_master_edit_supplier_master'
patch 'pharmacy_master/:id/update_supplier_master',to: 'pharmacy_master#update_supplier_master',as:'pharmacy_master_update_supplier_master'
delete 'pharmacy_master/:id/delete_supplier_master',to: 'pharmacy_master#delete_supplier_master',as:'pharmacy_master_delete_supplier_master'

#uses master
get 'pharmacy_master/view_uses_master'
get 'pharmacy_master/new_uses_master'
post 'pharmacy_master/create_uses_master'
get 'pharmacy_master/:id/edit_uses_master',to: 'pharmacy_master#edit_uses_master',as:'pharmacy_master_edit_uses_master'
patch 'pharmacy_master/:id/update_uses_master',to: 'pharmacy_master#update_uses_master',as:'pharmacy_master_update_uses_master'
delete 'pharmacy_master/:id/delete_uses_master',to: 'pharmacy_master#delete_uses_master',as:'pharmacy_master_delete_uses_master'

#pack master
get 'pharmacy_master/view_pack_master'
get 'pharmacy_master/new_pack_master'
post 'pharmacy_master/create_pack_master'
get 'pharmacy_master/:id/edit_pack_master',to: 'pharmacy_master#edit_pack_master',as:'pharmacy_master_edit_pack_master'
patch 'pharmacy_master/:id/update_pack_master',to: 'pharmacy_master#update_pack_master',as:'pharmacy_master_update_pack_master'
delete 'pharmacy_master/:id/delete_pack_master',to: 'pharmacy_master#delete_pack_master',as:'pharmacy_master_delete_pack_master'

#composition master
get 'pharmacy_master/view_composition_master'
get 'pharmacy_master/new_composition_master'
post 'pharmacy_master/create_composition_master'
get 'pharmacy_master/:id/edit_composition_master',to: 'pharmacy_master#edit_composition_master',as:'pharmacy_master_edit_composition_master'
patch 'pharmacy_master/:id/update_composition_master',to: 'pharmacy_master#update_composition_master',as:'pharmacy_master_update_composition_master'
delete 'pharmacy_master/:id/delete_composition_master',to: 'pharmacy_master#delete_composition_master',as:'pharmacy_master_delete_composition_master'

#sales tax master
get 'pharmacy_master/view_sales_tax_master'
get 'pharmacy_master/new_sales_tax_master'
post 'pharmacy_master/create_sales_tax_master'
get 'pharmacy_master/:id/edit_sales_tax_master',to: 'pharmacy_master#edit_sales_tax_master',as:'pharmacy_master_edit_sales_tax_master'
patch 'pharmacy_master/:id/update_sales_tax_master',to: 'pharmacy_master#update_sales_tax_master',as:'pharmacy_master_update_sales_tax_master'
delete 'pharmacy_master/:id/delete_sales_tax_master',to: 'pharmacy_master#delete_sales_tax_master',as:'pharmacy_master_delete_sales_tax_master'

#item master
get 'pharmacy_master/view_item_master'
get 'pharmacy_master/new_item_master'
post 'pharmacy_master/create_item_master'
get 'pharmacy_master/:id/edit_item_master',to: 'pharmacy_master#edit_item_master',as:'pharmacy_master_edit_item_master'
patch 'pharmacy_master/:id/update_item_master',to: 'pharmacy_master#update_item_master',as:'pharmacy_master_update_item_master'
delete 'pharmacy_master/:id/delete_item_master',to: 'pharmacy_master#delete_item_master',as:'pharmacy_master_delete_item_master'

#ledger master
get 'pharmacy_master/view_ledger_master'
get 'pharmacy_master/new_ledger_master'
post 'pharmacy_master/create_ledger_master'
get 'pharmacy_master/:id/edit_ledger_master',to: 'pharmacy_master#edit_ledger_master',as:'pharmacy_master_edit_ledger_master'
patch 'pharmacy_master/:id/update_ledger_master',to: 'pharmacy_master#update_ledger_master',as:'pharmacy_master_update_ledger_master'
delete 'pharmacy_master/:id/delete_ledger_master',to: 'pharmacy_master#delete_ledger_master',as:'pharmacy_master_delete_ledger_master'

#godown master
get 'pharmacy_master/view_godown_master'
get 'pharmacy_master/new_godown_master'
post 'pharmacy_master/create_godown_master'
get 'pharmacy_master/:id/edit_godown_master',to: 'pharmacy_master#edit_godown_master',as:'pharmacy_master_edit_godown_master'
patch 'pharmacy_master/:id/update_godown_master',to: 'pharmacy_master#update_godown_master',as:'pharmacy_master_update_godown_master'
delete 'pharmacy_master/:id/delete_godown_master',to: 'pharmacy_master#delete_godown_master',as:'pharmacy_master_delete_godown_master'

#series master
get 'pharmacy_master/view_series_master'
get 'pharmacy_master/new_series_master'
post 'pharmacy_master/create_series_master'
get 'pharmacy_master/:id/edit_series_master',to: 'pharmacy_master#edit_series_master',as:'pharmacy_master_edit_series_master'
patch 'pharmacy_master/:id/update_series_master',to: 'pharmacy_master#update_series_master',as:'pharmacy_master_update_series_master'
delete 'pharmacy_master/:id/delete_series_master',to: 'pharmacy_master#delete_series_master',as:'pharmacy_master_delete_series_master'

#diagnostic master#
#department master
get 'diagnostic_master/new_department_master'
post 'diagnostic_master/create_department_master'
get 'diagnostic_master/:id/edit_department_master',to: 'diagnostic_master#edit_department_master',as:'diagnostic_master_edit_department_master'
patch 'diagnostic_master/:id/update_department_master',to: 'diagnostic_master#update_department_master',as:'diagnostic_master_update_department_master'
delete 'diagnostic_master/:id/delete_department_master',to: 'diagnostic_master#delete_department_master',as:'diagnostic_master_delete_department_master'

#sub department master
get 'diagnostic_master/new_sub_department_master'
post 'diagnostic_master/create_sub_department_master'
get 'diagnostic_master/:id/edit_sub_department_master',to: 'diagnostic_master#edit_sub_department_master',as:'diagnostic_master_edit_sub_department_master'
patch 'diagnostic_master/:id/update_sub_department_master',to: 'diagnostic_master#update_sub_department_master',as:'diagnostic_master_update_sub_department_master'
delete 'diagnostic_master/:id/delete_sub_department_master',to: 'diagnostic_master#delete_sub_department_master',as:'diagnostic_master_delete_sub_department_master'

#test master
get 'diagnostic_master/new_test_master'
post 'diagnostic_master/create_test_master'
get 'diagnostic_master/:id/edit_test_master',to: 'diagnostic_master#edit_test_master',as:'diagnostic_master_edit_test_master'
patch 'diagnostic_master/:id/update_test_master',to: 'diagnostic_master#update_test_master',as:'diagnostic_master_update_test_master'
delete 'diagnostic_master/:id/delete_test_master',to: 'diagnostic_master#delete_test_master',as:'diagnostic_master_delete_test_master'

#test property
get 'diagnostic_master/new_test_property'
post 'diagnostic_master/create_test_property'
get 'diagnostic_master/:id/edit_test_property',to: 'diagnostic_master#edit_test_property',as:'diagnostic_master_edit_test_property'
patch 'diagnostic_master/:id/update_test_property',to: 'diagnostic_master#update_test_property',as:'diagnostic_master_update_test_property'
delete 'diagnostic_master/:id/delete_test_property',to: 'diagnostic_master#delete_test_property',as:'diagnostic_master_delete_test_property'

#package master
get 'diagnostic_master/new_package_master'
post 'diagnostic_master/create_package_master'
get 'diagnostic_master/:id/edit_package_master',to: 'diagnostic_master#edit_package_master',as:'diagnostic_master_edit_package_master'
patch 'diagnostic_master/:id/update_package_master',to: 'diagnostic_master#update_package_master',as:'diagnostic_master_update_package_master'
delete 'diagnostic_master/:id/delete_package_master',to: 'diagnostic_master#delete_package_master',as:'diagnostic_master_delete_package_master'

#company test rate master
get 'diagnostic_master/new_company_test_rate_master'
post 'diagnostic_master/create_company_test_rate_master'
get 'diagnostic_master/:id/edit_company_test_rate_master',to: 'diagnostic_master#edit_company_test_rate_master',as:'diagnostic_master_edit_company_test_rate_master'
patch 'diagnostic_master/:id/update_company_test_rate_master',to: 'diagnostic_master#update_company_test_rate_master',as:'diagnostic_master_update_company_test_rate_master'
delete 'diagnostic_master/:id/delete_company_test_rate_master',to: 'diagnostic_master#delete_company_test_rate_master',as:'diagnostic_master_delete_company_test_rate_master'


get 'outdoors/new'
post 'outdoors/new_registration_create'
get 'outdoors/:id/edit_registration',to:'outdoors#edit_registration',as:'outdoors_edit_registration'
patch 'outdoors/:id/update_registration',to:'outdoors#update_registration',as:'outdoors_update_registration' 
delete 'outdoors/:id/destroy_patient',to:'outdoors#destroy_patient',as:'outdoors_destroy_patient'  

get 'outdoors/old_registration'
post 'outdoors/old_registration_create'
get 'outdoors/:id/edit_registration_old',to:'outdoors#edit_registration_old',as:'outdoors_edit_registration_old'
patch 'outdoors/:id/update_registration_old',to:'outdoors#update_registration_old',as:'outdoors_update_registration_old' 
delete 'outdoors/:id/destroy_patient_old',to:'outdoors#destroy_patient_old',as:'outdoors_destroy_patient_old'  

get 'outdoors/before_patient_entry'
post 'outdoors/before_patient_entry_create'
get 'outdoors/:id/edit_before_patient_entry',to:'outdoors#edit_before_patient_entry',as:'outdoors_edit_before_patient_entry'
patch 'outdoors/:id/update_before_patient_entry',to:'outdoors#update_before_patient_entry',as:'outdoors_update_before_patient_entry' 
delete 'outdoors/:id/destroy_before_patient_entry',to:'outdoors#destroy_before_patient_entry',as:'outdoors_destroy_before_patient_entry'  

get 'outdoors/clinical_report'
post 'outdoors/clinical_report_create'
get 'outdoors/:id/edit_clinical_report',to:'outdoors#edit_clinical_report',as:'outdoors_edit_clinical_report'
patch 'outdoors/:id/update_clinical_report',to:'outdoors#update_clinical_report',as:'outdoors_update_clinical_report' 
delete 'outdoors/:id/destroy_clinical_report',to:'outdoors#destroy_clinical_report',as:'outdoors_destroy_clinical_report'  


get 'outdoors/money_receipt'
post 'outdoors/money_receipt_create'
get 'outdoors/:id/edit_money_receipt',to:'outdoors#edit_money_receipt',as:'outdoors_edit_money_receipt'
patch 'outdoors/:id/update_money_receipt',to:'outdoors#update_money_receipt',as:'outdoors_update_money_receipt' 
delete 'outdoors/:id/destroy_money_receipt',to:'outdoors#destroy_money_receipt',as:'outdoors_destroy_money_receipt'  

get 'outdoors/appitment'
post 'outdoors/appitment_create'
get 'outdoors/:id/edit_appitment',to:'outdoors#edit_appitment',as:'outdoors_edit_appitment'
patch 'outdoors/:id/update_appitment',to:'outdoors#update_appitment',as:'outdoors_update_appitment' 
delete 'outdoors/:id/destroy_appitment',to:'outdoors#destroy_appitment',as:'outdoors_destroy_appitment' 

get 'outdoors/prescription'
post 'outdoors/prescription_create'
get 'outdoors/:id/edit_prescription',to:'outdoors#edit_prescription',as:'outdoors_edit_prescription'
patch 'outdoors/:id/update_prescription',to:'outdoors#update_prescription',as:'outdoors_update_prescription' 
delete 'outdoors/:id/destroy_prescription',to:'outdoors#destroy_prescription',as:'outdoors_destroy_prescription'   


get 'labs/new'
post 'labs/lab_case_create'
get 'labs/:id/edit_lab_case',to:'labs#edit_lab_case',as:'labs_edit_lab_case'
patch 'labs/:id/update_lab_case',to:'labs#update_lab_case',as:'labs_update_lab_case' 
delete 'labs/:id/destroy_lab_case',to:'labs#destroy_lab_case',as:'labs_destroy_lab_case'   

get 'labs/test_cancellation'
post 'labs/test_cancellation_create'
get 'labs/:id/edit_test_cancellation',to:'labs#edit_test_cancellation',as:'labs_edit_test_cancellation'
patch 'labs/:id/update_lab_case',to:'labs#update_lab_case',as:'labs_update_test_cancellation' 
delete 'labs/:id/destroy_test_cancellation',to:'labs#destroy_test_cancellation',as:'labs_destroy_test_cancellation'   


#---------------Master-----------------------


#INDOOR#
get 'indoor/new_registration'
post 'indoor/create_registration',to: 'indoor#create_registration',as: 'create_registration'
patch 'indoor/:id/update_registration',to: 'indoor#update_registration',as: 'update_registration'
delete 'indoor/:id/delete_registration',to: 'indoor#delete_registration',as: 'delete_registration'

get 'indoor/new_advance_booking'
post 'indoor/create_advance_booking',to: 'indoor#create_advance_booking',as: 'create_advance_booking'
patch 'indoor/:id/update_advance_booking',to: 'indoor#update_advance_booking',as: 'update_advance_booking'
delete 'indoor/:id/delete_advance_booking',to: 'indoor#delete_advance_booking',as: 'delete_advance_booking'

get 'indoor/new_other_service'
post 'indoor/create_other_service',to: 'indoor#create_other_service',as: 'create_other_service'
patch 'indoor/:id/update_other_service',to: 'indoor#update_other_service',as: 'update_other_service'
delete 'indoor/:id/delete_other_service',to: 'indoor#delete_other_service',as: 'delete_other_service'

get 'indoor/new_doctor_visit_details'
post 'indoor/create_doctor_visit_details',to: 'indoor#create_doctor_visit_details',as: 'create_doctor_visit_details'
patch 'indoor/:id/update_doctor_visit_details',to: 'indoor#update_doctor_visit_details',as: 'update_doctor_visit_details'
delete 'indoor/:id/delete_doctor_visit_details',to: 'indoor#delete_doctor_visit_details',as: 'delete_doctor_visit_details'

get 'indoor/new_bed_transfer'
post 'indoor/create_bed_transfer',to: 'indoor#create_bed_transfer',as: 'create_bed_transfer'
patch 'indoor/:id/update_bed_transfer',to: 'indoor#update_bed_transfer',as: 'update_bed_transfer'
delete 'indoor/:id/delete_bed_transfer',to: 'indoor#delete_bed_transfer',as: 'delete_bed_transfer'

get 'indoor/new_ot_billing'
post 'indoor/create_ot_billing',to: 'indoor#create_ot_billing',as: 'create_ot_billing'
patch 'indoor/:id/update_ot_billing',to: 'indoor#update_ot_billing',as: 'update_ot_billing'
delete 'indoor/:id/delete_ot_billing',to: 'indoor#delete_ot_billing',as: 'delete_ot_billing'

get 'indoor/new_money_reciept'
post 'indoor/create_money_reciept',to: 'indoor#create_money_reciept',as: 'create_money_reciept'
patch 'indoor/:id/update_money_reciept',to: 'indoor#update_money_reciept',as: 'update_money_reciept'
delete 'indoor/:id/delete_money_reciept',to: 'indoor#delete_money_reciept',as: 'delete_money_reciept'

get 'indoor/new_discharge'
post 'indoor/create_discharge',to: 'indoor#create_discharge',as: 'create_discharge'
patch 'indoor/:id/update_discharge',to: 'indoor#update_discharge',as: 'update_discharge'
delete 'indoor/:id/delete_discharge',to: 'indoor#delete_discharge',as: 'delete_discharge'

get 'indoor/new_final_bill'
post 'indoor/create_final_bill',to: 'indoor#create_final_bill',as: 'create_final_bill'
patch 'indoor/:id/update_final_bill',to: 'indoor#update_final_bill',as: 'update_final_bill'
delete 'indoor/:id/delete_final_bill',to: 'indoor#delete_final_bill',as: 'delete_final_bill'

get 'indoor/new_ipd_clinical_report'
post 'indoor/create_ipd_clinical_report',to: 'indoor#create_ipd_clinical_report',as: 'create_ipd_clinical_report'
patch 'indoor/:id/update_ipd_clinical_report',to: 'indoor#update_ipd_clinical_report',as: 'update_ipd_clinical_report'
delete 'indoor/:id/delete_ipd_clinical_report',to: 'indoor#delete_ipd_clinical_report',as: 'delete_ipd_clinical_report'

get 'indoor/new_ipd_admission'
post 'indoor/create_ipd_admission',to: 'indoor#create_ipd_admission',as: 'create_ipd_admission'
patch 'indoor/:id/update_ipd_admission',to: 'indoor#update_ipd_admission',as: 'update_ipd_admission'
delete 'indoor/:id/delete_ipd_admission',to: 'indoor#delete_ipd_admission',as: 'delete_ipd_admission'

get 'indoor/new_birth_certificate'
post 'indoor/create_birth_certificate',to: 'indoor#create_birth_certificate',as: 'create_birth_certificate'
patch 'indoor/:id/update_birth_certificate',to: 'indoor#update_birth_certificate',as: 'update_birth_certificate'
delete 'indoor/:id/delete_birth_certificate',to: 'indoor#delete_birth_certificate',as: 'delete_birth_certificate'

get 'indoor/new_death_certificate'
post 'indoor/create_death_certificate',to: 'indoor#create_death_certificate',as: 'create_death_certificate'
patch 'indoor/:id/update_death_certificate',to: 'indoor#update_death_certificate',as: 'update_death_certificate'
delete 'indoor/:id/delete_death_certificate',to: 'indoor#delete_death_certificate',as: 'delete_death_certificate'

get 'indoor/new_nurse_master'
post 'indoor/create_nurse_master',to: 'indoor#create_nurse_master',as: 'create_nurse_master'
patch 'indoor/:id/update_nurse_master',to: 'indoor#update_nurse_master',as: 'update_nurse_master'
delete 'indoor/:id/delete_nurse_master',to: 'indoor#delete_nurse_master',as: 'delete_nurse_master'

get 'indoor/new_nurseing_counter_entry'
post 'indoor/create_nurseing_counter_entry',to: 'indoor#create_nurseing_counter_entry',as: 'create_nurseing_counter_entry'
patch 'indoor/:id/update_nurseing_counter_entry',to: 'indoor#update_nurseing_counter_entry',as: 'update_nurseing_counter_entry'
delete 'indoor/:id/delete_nurseing_counter_entry',to: 'indoor#delete_nurseing_counter_entry',as: 'delete_nurseing_counter_entry'
#INDOOR#
#INDOORS#
get 'indoors/indoor_dashboard'
get 'indoors/indoor_patient_admission_form'
get 'indoors/advance_booking_form'
get 'indoors/other_service_entry_form'
get 'indoors/doctor_visit_form'
get 'indoors/bed_transfer'
get 'indoors/ot_billing'
get 'indoors/indoor_money_reciept'
get 'indoors/discharge_details'
get 'indoors/final_bill'
get 'indoors/manual_final_bill'
get 'indoors/ipd_clinical_report'
get 'indoors/ipd_registration_form'
#INDOORS#

#PHARMACY#
get 'pharmacy/new_credit_note'
post 'pharmacy/create_credit_note',to: 'pharmacy#create_credit_note',as: 'create_credit_note'
patch 'pharmacy/:id/update_credit_note',to: 'pharmacy#update_credit_note',as: 'update_credit_note'
delete 'pharmacy/:id/delete_credit_note',to: 'pharmacy#delete_credit_note',as: 'delete_credit_note'

get 'pharmacy/new_debit_note'
post 'pharmacy/create_debit_note',to: 'pharmacy#create_debit_note',as: 'create_debit_note'
patch 'pharmacy/:id/update_debit_note',to: 'pharmacy#update_debit_note',as: 'update_debit_note'
delete 'pharmacy/:id/delete_debit_note',to: 'pharmacy#delete_debit_note',as: 'delete_debit_note'

get 'pharmacy/new_expiray_report'
post 'pharmacy/create_expiray_report',to: 'pharmacy#create_expiray_report',as: 'create_expiray_report'
patch 'pharmacy/:id/update_expiray_report',to: 'pharmacy#update_expiray_report',as: 'update_expiray_report'
delete 'pharmacy/:id/delete_expiray_report',to: 'pharmacy#delete_expiray_report',as: 'delete_expiray_report'

get 'pharmacy/new_purchase_challan'
post 'pharmacy/create_purchase_challan',to: 'pharmacy#create_purchase_challan',as: 'create_purchase_challan'
patch 'pharmacy/:id/update_purchase_challan',to: 'pharmacy#update_purchase_challan',as: 'update_purchase_challan'
delete 'pharmacy/:id/delete_purchase_challan',to: 'pharmacy#delete_purchase_challan',as: 'delete_purchase_challan'

get 'pharmacy/new_purchase_master'
post 'pharmacy/create_purchase_master',to: 'pharmacy#create_purchase_master',as: 'create_purchase_master'
patch 'pharmacy/:id/update_purchase_master',to: 'pharmacy#update_purchase_master',as: 'update_purchase_master'
delete 'pharmacy/:id/delete_purchase_master',to: 'pharmacy#delete_purchase_master',as: 'delete_purchase_master'


get 'pharmacy/new_pharmacy_sales_master'
post 'pharmacy/create_pharmacy_sales_master',to: 'pharmacy#create_pharmacy_sales_master',as: 'create_pharmacy_sales_master'
patch 'pharmacy/:id/update_pharmacy_sales_master',to: 'pharmacy#update_pharmacy_sales_master',as: 'update_pharmacy_sales_master'
delete 'pharmacy/:id/delete_pharmacy_sales_master',to: 'pharmacy#delete_pharmacy_sales_master',as: 'delete_pharmacy_sales_master'

get 'pharmacy/new_stock_transfer_godown_sale'
post 'pharmacy/create_stock_transfer_godown_sale',to: 'pharmacy#create_stock_transfer_godown_sale',as: 'create_stock_transfer_godown_sale'
patch 'pharmacy/:id/update_stock_transfer_godown_sale',to: 'pharmacy#update_stock_transfer_godown_sale',as: 'update_stock_transfer_godown_sale'
delete 'pharmacy/:id/delete_stock_transfer_godown_sale',to: 'pharmacy#delete_stock_transfer_godown_sale',as: 'delete_stock_transfer_godown_sale'

get 'pharmacy/new_sale_return'
post 'pharmacy/create_sale_return',to: 'pharmacy#create_sale_return',as: 'create_sale_return'
patch 'pharmacy/:id/update_sale_return',to: 'pharmacy#update_sale_return',as: 'update_sale_return'
delete 'pharmacy/:id/delete_sale_return',to: 'pharmacy#delete_sale_return',as: 'delete_sale_return'


#PHARMACY#+

get 'pharmacy/new_opening_stock'

#PHARMACY#

#STORES#
get 'stores/new_common_opening_stock'
post 'stores/create_common_opening_stock',to: 'stores#create_common_opening_stock',as: 'stores_create_common_opening_stock'
patch 'stores/:id/update_common_opening_stock',to: 'stores#update_common_opening_stock',as: 'stores_update_common_opening_stock'
delete 'stores/:id/delete_common_opening_stock',to: 'stores#delete_common_opening_stock',as: 'stores_delete_common_opening_stock'

get 'stores/new_purchase_master_store'
post 'stores/create_purchase_master_store',to: 'stores#create_purchase_master_store',as: 'stores_create_purchase_master_store'
patch 'stores/:id/update_purchase_master_store',to: 'stores#update_purchase_master_store',as: 'stores_update_purchase_master_store'
delete 'stores/:id/delete_purchase_master_store',to: 'stores#delete_purchase_master_store',as: 'stores_delete_purchase_master_store'

get 'stores/new_issue_counter'
post 'stores/create_issue_counter',to: 'stores#create_issue_counter',as: 'stores_create_issue_counter'
patch 'stores/:id/update_issue_counter',to: 'stores#update_issue_counter',as: 'stores_update_issue_counter'
delete 'stores/:id/delete_issue_counter',to: 'stores#delete_issue_counter',as: 'stores_delete_issue_counter'
#stores#


#BLOODBANK#
get 'bloodbanks/new_rhd_master'
post 'bloodbanks/create_rhd_master',to: 'bloodbanks#create_rhd_master',as: 'create_rhd_master'
patch 'bloodbanks/:id/update_rhd_master',to: 'bloodbanks#update_rhd_master',as: 'update_rhd_master'
delete 'bloodbanks/:id/delete_rhd_master',to: 'bloodbanks#delete_rhd_master',as: 'delete_rhd_master'

get 'bloodbanks/new_blood_group'
post 'bloodbanks/create_blood_group',to: 'bloodbanks#create_blood_group',as: 'create_blood_group'
patch 'bloodbanks/:id/update_blood_group',to: 'bloodbanks#update_blood_group',as: 'update_blood_group'
delete 'bloodbanks/:id/delete_blood_group',to: 'bloodbanks#delete_blood_group',as: 'delete_blood_group'

get 'bloodbanks/new_hospital_master'
post 'bloodbanks/create_hospital_master',to: 'bloodbanks#create_hospital_master',as: 'create_hospital_master'
patch 'bloodbanks/:id/update_hospital_master',to: 'bloodbanks#update_hospital_master',as: 'update_hospital_master'
delete 'bloodbanks/:id/delete_hospital_master',to: 'bloodbanks#delete_hospital_master',as: 'delete_hospital_master'

get 'bloodbanks/new_relative_group_master'
post 'bloodbanks/create_relative_group_master',to: 'bloodbanks#create_relative_group_master',as: 'create_relative_group_master'
patch 'bloodbanks/:id/update_relative_group_master',to: 'bloodbanks#update_relative_group_master',as: 'update_relative_group_master'
delete 'bloodbanks/:id/delete_relative_group_master',to: 'bloodbanks#delete_relative_group_master',as: 'delete_relative_group_master'

get 'bloodbanks/new_hospital_type_master'
post 'bloodbanks/create_hospital_type_master',to: 'bloodbanks#create_hospital_type_master',as: 'create_hospital_type_master'
patch 'bloodbanks/:id/update_hospital_type_master',to: 'bloodbanks#update_hospital_type_master',as: 'update_hospital_type_master'
delete 'bloodbanks/:id/delete_hospital_type_master',to: 'bloodbanks#delete_hospital_type_master',as: 'delete_hospital_type_master'

root 'home#dashboard'


resources :home
resources :setting
resources :categories
resources :general_settings
  
resources :courses do
	resources :batches
end

resources :grading_levels
resources :batches do
	resources :grading_levels
end  

resources :batch_transfers
  
  resources :subjects 
   resources :batches do
    resources :subjects
    resources :elective_groups do
     resources :subjects 
    end  
  end 
 
 resources :students do
    resources :guardians
end

resources :newscasts do
resources :comments
end
resources :users

resources :time_tables
resources :class_timings
  resources :batches do
  resources :class_timings
end  
resources :events
resources :calender
resources :weekdays
resources :time_tables
resources :attendences
resources :time_table_entries

  resources :batches do
  resources :time_table_entries
end  

resources :exam_setting
resources :exam_groups do
  resources :exams 
end
resources :exams do
    resources :exam_scores
end

resources :online_exam_groups
resources :exam_reports

resources :courses do
  resources :exam_setting
end  
resources :online_exams
resources :employees
resources :employee_attendances
resources :finance
resources :outdoors
resources :masters
resources :stores
resources :common_master

resources :pharmacy_master


resources :pharmacy

end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


demo_data = [['24/11/2014','27/11/2014','dev',20,'pune',100],
['29/11/2014','28/11/2014','dev2',50,'maharshtra',500]]


demo_data.each do |f_d,t_d,n,a,ad,t|
	Demo.create!(from_date: f_d,to_date: t_d, name: n, age: a, address: ad, total_amt: t)
end

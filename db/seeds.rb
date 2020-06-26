
#coding: utf-8

User.create!(name: "管理者",
             email: "sample@email.com",
             emploee_number: 0,
             password:"password",
             password_confirmation: "password",
             admin: true)
             
User.create!(name: "上長A",
             email: "superior-1@email.com",
             emploee_number: 1,
             password:"password",
             password_confirmation: "password",
             superior:true)    

User.create!(name: "上長B",
             email: "superior-2@email.com",
             emploee_number: 2,
             password:"password",
             password_confirmation: "password",
             superior:true)   
          
User.create!(name: "一般１",
             email: "sample-1@email.com",
             emploee_number: 3,
             password: "password",
             password_confirmation: "password")
             
User.create!(name: "一般2",
             email: "sample-2@email.com",
             emploee_number: 4,
             password: "password",
             password_confirmation: "password")
                          
             

           
             

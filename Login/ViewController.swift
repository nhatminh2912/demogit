//
//  ViewController.swift
//  Login
//
//  Created by DangCan on 5/16/16.
//  Copyright © 2016 TuNguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var action_ĐăngNhap: UIButton!
    @IBOutlet weak var tf_password: UITextField!
    @IBOutlet weak var tf_user: UITextField!
    @IBOutlet weak var action_doimatkhau: UIButton!
    @IBOutlet weak var action_danhsach: UIButton!
    @IBOutlet weak var action_xoa: UIButton!
    var users = ["cuong":"123", "dat":"1", "tien":"567", "admin":"abc123"]
    override func viewDidLoad() {
        super.viewDidLoad()
        action_doimatkhau.isHidden = true
        action_danhsach.isHidden = true
        action_xoa.isHidden = true
    }
    
    
    @IBAction func action_ĐăngNhap(_ sender: AnyObject) {
        if let password = users[tf_user.text!]
        {
        
        
            if password == tf_password.text
            {
                action_doimatkhau.isHidden = false
                print("Đăng nhập thành công")
                print("array = \(users)")
            }
            else
            {
                print("Mật khẩu không đúng")
            }
        }
        else
        {
            print("Tài khoản không tồn tại")
        }
        if let hienthi = users["admin"]
        {
            if hienthi == tf_password.text
            {
                action_danhsach.isHidden = false
                action_xoa.isHidden = false
            }
        }
    }
    
    
    
    
    @IBAction func action_danhsach(_ sender: UIButton) {
        if let adm = users["admin"]
        {
            if adm == tf_password.text {
                for (tendangnhap, matkhau) in users
                {
                    print("ten dang nhap la:\(tendangnhap)")
                    print("mat khau la:\(matkhau)")
                }
                
            }
            else
            {
                print("ban phai la admin de xem duoc danh sach nay")
                
            }
            
        }
    }
    
    
    
    
    
    
    @IBAction func action_dangky(_ sender: UIButton) {
        if let dangky = users[tf_user.text!]
        {
            print("tai khoan da ton tai")
        }
        else
        {
            users[tf_user.text!] = tf_password.text
            print("dang ky thanh cong")
        }
        
        
    }
    
    
    
    
    
    
    @IBAction func action_doimatkhau(_ sender: UIButton) {
        if let taikhoan = users[tf_user.text!]{
            if taikhoan == tf_password.text
            {
                print("ban can nhap mat khau moi")
            }
            else
            {
                users[tf_user.text!] = tf_password.text
                print("doi mat khau thanh cong")
                print("array = \(users)")
            }
        }
    }

    
    @IBAction func action_xoa(_ sender: UIButton) {
        if let xoa = users["admin"]
        {
            if xoa == tf_password.text
            {
                users.removeValue(forKey: tf_user.text!)
                print("xoa tai khoan thanh cong")
                print("array = \(users)")
            }
            else
            {
                print("ban phai la admin de su dung tinh nang nay")
            }
        }
    }
}




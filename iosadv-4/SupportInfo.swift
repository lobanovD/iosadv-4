//
//  SupportInfo.swift
//  iosadv-4
//
//  Created by Dmitrii Lobanov on 13.06.2022.
//

import Foundation

// MARK: Глобальные переменные в памяти приложения

// Биометрическая авторизация (false - выключена, true - включена)
// UserDefaults.standard.set(false, forKey: "userConfirmBioAuth")

// Авторизация пользователя по логин/паролю (false - не выполнена, true - выполнена)
// UserDefaults.standard.set(false, forKey: "userLoginSuccess")

// Авторизация пользователя по биометрии (false - не выполнена, true - выполнена)
// UserDefaults.standard.set(false, forKey: "userBioSuccess")

// Отменил ли пользователь авторизацию по биометрии (true - отменил, false - согласился использовать)
// UserDefaults.standard.set(false, forKey: "userCanceledBioAuth")





// MARK: Известные ошибки


//MARK: DEBUG
//print("---------------------------")
//print("userConfirmBioAuth", UserDefaults.standard.bool(forKey: "userConfirmBioAuth"))
//print("userLoginSuccess", UserDefaults.standard.bool(forKey: "userLoginSuccess"))
//print("userBioSuccess",UserDefaults.standard.bool(forKey: "userBioSuccess"))
//print("userCanceledBioAuth",UserDefaults.standard.bool(forKey: "userCanceledBioAuth"))
//print("---------------------------")

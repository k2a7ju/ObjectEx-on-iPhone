//
//  ObjectEx.swift
//  ObjectEx
//
//  Created by HIROYUKI SHIRAKAZU on 2016/04/21.
//  Copyright © 2016年 HIROYUKI SHIRAKAZU. All rights reserved.
//

import UIKit

class ObjectEx:UIView{
    //描写時に呼ばれる
    override func drawRect(rect: CGRect) {
        //オブジェクト型の変数の定義
        let calendar: NSCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        
        //取得情報フラグの準備
        let flags: NSCalendarUnit = [
            NSCalendarUnit.Year, //年
            NSCalendarUnit.Month, //月
            NSCalendarUnit.Day, //日
            NSCalendarUnit.Hour, //時
            NSCalendarUnit.Minute //分
        ]
        
        //日付コンポーネントの取得
        let comps = calendar.components(flags, fromDate: NSDate())
        
        //年月日の取得
        let year = comps.year
        let month = comps.month
        let day = comps.day
        let hour = comps.hour
        let minute = comps.minute
        
        //文字列の描写
        let str = "\(year)年\(month)月\(day)日\(hour)時\(minute)分"
        drawString(str, x: 0, y: 20)
    }
    
    func drawString(str: String, x: Int, y:Int){
        let attrs = [NSFontAttributeName : UIFont.systemFontOfSize(24)]
        str.drawAtPoint(CGPointMake(CGFloat(x),CGFloat(y)),withAttributes: attrs)
    }
}
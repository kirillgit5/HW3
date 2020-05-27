/*:
 ## Упражнение - приведение типов и их контроль
 
 Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.
 */
let arrAny:[Any] = ["stroka",10.0,11.0,false,true]
arrAny.forEach{ (variable) in
    print(variable)
}


/*:
 Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.
 */
let arrAny2:[Any] = ["stroka",10.0,11.0,false,true,1]
arrAny2.forEach{(variable) in
    if variable is String{
        print("Строка-\(variable)")
    } else {
    if variable is Int {
        print("Целое число-\(variable)")
    } else {
    if (variable is Double) || (variable is Float){
        print("Вещественное число-\(variable)")
    } else {
    if (variable is Bool){
        print("Булевое значение-\(variable)")
    } else {
        print("Другой тип данных \(variable)")
        }
    }
    }
    }
}

/*:
 Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите пары ключ/значения для всех элементов коллекции.
 */
let dictionary:[String: Any] = ["animal1":"dog","animal2":"cat","flag":false,"number":12,"Double":11.0]
for (dictionaryKey,dictionaryValue) in dictionary {
    print("\(dictionaryKey)----\(dictionaryValue)")
}

/*:
 Создайте переменную `total` типа `Double`, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно `true`, либо вычтите 3, если оно `false`.  Напечатайте значение `total`.
 */
var total = 0.0
let dictionary1:[String: Any] = ["animal1":"dog","animal2":"cat","flag":false,"number":12,"Double":11.0,"Double1":14.4,"stroka":"10"]
for value in dictionary1.values {
     if let valueDouble = value as? Double {
        total += valueDouble
    } else {
     if let valueFloat  = value as? Float  {
        total += Double(valueFloat)
    } else {
     if  value is  String {
        total += 1.0
    } else {
     if let valueBool   = value as? Bool   {
        if valueBool == true {
            total+=2.0
    } else {
            total-=3
        }
    } else {
     if let valueInt   = value as? Int     {
        total += Double(valueInt)
           }
        }
     }
    }
 }
}
print(total)
/*:
 Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
 */
total = 0.0
for value in dictionary1.values {
     if let valueDouble = value  as? Double {
        total += valueDouble
    } else {
     if let valueFloat  = value  as? Float  {
        total += Double(valueFloat)
    } else {
     if  let valueString = value as? String,
         let ch = Double(valueString)       {
        total += ch
    } else {
     if let valueInt   = value   as? Int    {
        total += Double(valueInt)
           }
        }
     }
    }
 }
print(total)


//: страница 1 из 2  |  [Далее: упражнение для приложения - типы тренировок](@next)

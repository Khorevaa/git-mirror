
///////////////////////////////////////////////////////////////////////////////////////////////////
// Прикладной интерфейс

Процедура ЗарегистрироватьКоманду(Знач ИмяКоманды, Знач Парсер) Экспорт
	ОписаниеКоманды = Парсер.ОписаниеКоманды(ИмяКоманды, "Вывод справки по параметрам");
	Парсер.ДобавитьПозиционныйПараметрКоманды(ОписаниеКоманды, "Команда");
	Парсер.ДобавитьКоманду(ОписаниеКоманды);
КонецПроцедуры

Функция ВыполнитьКоманду(Знач ПараметрыКоманды) Экспорт
    
	Парсер = Новый ПарсерАргументовКоманднойСтроки;

	МенеджерКомандПриложения.ЗарегистрироватьКоманды(Парсер);

	Сообщить("Утилита выполняет зеркалирование указанного репозитория git в другой репозиторий");
	Сообщить("В качестве рабочего каталога используется текущий каталог");
	
	Если ПараметрыКоманды["Команда"] = Неопределено Тогда
		ПоказатьВозможныеКоманды(Парсер);
	Иначе
		ПоказатьСправкуПоКоманде(Парсер, ПараметрыКоманды["Команда"]);
	КонецЕсли;

	Возврат 0;

КонецФункции

Процедура ПоказатьВозможныеКоманды(Знач Парсер)
	
	Парсер.ВывестиСправкуПоКомандам();

КонецПроцедуры

Процедура ПоказатьСправкуПоКоманде(Знач Парсер, Знач ИмяКоманды)

	Парсер.ВывестиСправкуПоКоманде(ИмяКоманды);

КонецПроцедуры

Процедура ОповеститьОЗавершении() Экспорт
	
	НовыхЗаписей = ОбменМобильныеАвтономныйСервер.ПринятоОтправленоНовыхЗаписей();
	Если НовыхЗаписей.Принято <> 0 ИЛИ НовыхЗаписей.Отправлено <> 0 Тогда
		ОповеститьОбИзменении(Тип("ДокументСсылка.Заказ"));
		ОповеститьОбИзменении(Тип("СправочникСсылка.Склады"));
		ОповеститьОбИзменении(Тип("СправочникСсылка.Контрагенты"));
		ОповеститьОбИзменении(Тип("СправочникСсылка.Товары"));
		ОбновитьИнтерфейс();
		ПоказатьОповещениеПользователя("Выполнена синхронизация", , "Принято объектов: " + НовыхЗаписей.Принято + " Отправлено объектов: " + НовыхЗаписей.Отправлено);
	КонецЕсли

КонецПроцедуры

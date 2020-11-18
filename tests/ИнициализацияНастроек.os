#Использовать "../src/model"

Функция ПолучитьСписокТестов(ЮнитТестирование) Экспорт
	
	ВсеТесты = Новый Массив;
	
	ВсеТесты.Добавить("ТестДолжен_ИнициализироватьНастройкиRedmine");
	ВсеТесты.Добавить("ТестДолжен_ИнициализироватьНастройкиJira");
	ВсеТесты.Добавить("ТестДолжен_ИнициализироватьНастройкиRabbitMQ");
	ВсеТесты.Добавить("ТестДолжен_ИнициализироватьНастройкиSentry");

	Возврат ВсеТесты;
	
КонецФункции

Процедура ПередЗапускомТеста() Экспорт
	
	Каталог = ОбъединитьПути(ТекущийСценарий().Каталог, "..", "features", "fixtures");
	УстановитьТекущийКаталог(Каталог);
	
КонецПроцедуры

Процедура ПослеЗапускаТеста() Экспорт
	
КонецПроцедуры

Процедура ТестДолжен_ИнициализироватьНастройкиRedmine() Экспорт

	МенеджерНастроек.Инициализировать("appsettingsRedmine.json");

	ХранилищеДанныхТип = ТипЗнч(МенеджерНастроек.ХранилищеДанных());

	ПровайдерИнтеграции = МенеджерНастроек.ПровайдерИнтеграции();
	ПровайдерИнтеграцииТип = ТипЗнч(ПровайдерИнтеграции);

	Ожидаем.Что(ХранилищеДанныхТип).Равно(Тип("ФайловоеХранилище"));
	Ожидаем.Что(ПровайдерИнтеграцииТип).Равно(Тип("ПровайдерИнтеграцииRedmine"));
	
КонецПроцедуры

Процедура ТестДолжен_ИнициализироватьНастройкиJira() Экспорт

	МенеджерНастроек.Инициализировать("appsettingsJira.json");

	ХранилищеДанныхТип = ТипЗнч(МенеджерНастроек.ХранилищеДанных());

	ПровайдерИнтеграции = МенеджерНастроек.ПровайдерИнтеграции();
	ПровайдерИнтеграцииТип = ТипЗнч(ПровайдерИнтеграции);

	Ожидаем.Что(ХранилищеДанныхТип).Равно(Тип("ФайловоеХранилище"));
	Ожидаем.Что(ПровайдерИнтеграцииТип).Равно(Тип("ПровайдерИнтеграцииJira"));
	
КонецПроцедуры

Процедура ТестДолжен_ИнициализироватьНастройкиRabbitMQ() Экспорт

	МенеджерНастроек.Инициализировать("appsettingsRabbitMQ.json");

	ХранилищеДанныхТип = ТипЗнч(МенеджерНастроек.ХранилищеДанных());

	ПровайдерИнтеграции = МенеджерНастроек.ПровайдерИнтеграции();
	ПровайдерИнтеграцииТип = ТипЗнч(ПровайдерИнтеграции);

	Ожидаем.Что(ХранилищеДанныхТип).Равно(Тип("ФайловоеХранилище"));
	Ожидаем.Что(ПровайдерИнтеграцииТип).Равно(Тип("ПровайдерИнтеграцииRabbitMQ"));
	
КонецПроцедуры

Процедура ТестДолжен_ИнициализироватьНастройкиSentry() Экспорт

	МенеджерНастроек.Инициализировать("appsettingsSentry.json");

	ХранилищеДанныхТип = ТипЗнч(МенеджерНастроек.ХранилищеДанных());

	ПровайдерИнтеграции = МенеджерНастроек.ПровайдерИнтеграции();
	ПровайдерИнтеграцииТип = ТипЗнч(ПровайдерИнтеграции);

	Ожидаем.Что(ХранилищеДанныхТип).Равно(Тип("ФайловоеХранилище"));
	Ожидаем.Что(ПровайдерИнтеграцииТип).Равно(Тип("ПровайдерИнтеграцииSentry"));
	
КонецПроцедуры

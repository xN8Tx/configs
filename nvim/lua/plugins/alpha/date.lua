-- Загружаем библиотеку для работы с датой и временем
local os = require("os")

local currentDateTime = os.date("%A %d %B")

local days = {
	["понедельник"] = "Mon",
	["вторник"] = "Tue",
	["среда"] = "Wed",
	["четверг"] = "Thu",
	["пятница"] = "Fri",
	["суббота"] = "Sat",
	["воскресенье"] = "Sun",
}
for rus, eng in pairs(days) do
	currentDateTime = currentDateTime:gsub(rus, eng)
end

local months = {
	["января"] = "Jan",
	["февраля"] = "Feb",
	["марта"] = "Mar",
	["апреля"] = "Apr",
	["мая"] = "May",
	["июня"] = "Jun",
	["июля"] = "Jul",
	["августа"] = "Aug",
	["сентября"] = "Sep",
	["октября"] = "Oct",
	["ноября"] = "Nov",
	["декабря"] = "Dec",
}
for rus, eng in pairs(months) do
	currentDateTime = currentDateTime:gsub(rus, eng)
end

return currentDateTime

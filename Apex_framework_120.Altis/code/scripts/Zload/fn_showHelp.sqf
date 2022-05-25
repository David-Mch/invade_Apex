disableSerialization;
//_mainDisplay 
createDialog "zlo_HelpDialog";
waitUntil{!isnull (findDisplay 456964);};
_mainDisplay = findDisplay 456964;
_ctrl = _mainDisplay displayCtrl (1101);
_ctrl ctrlSetStructuredText parseText format["<t size='0.7' shadow='1' shadowColor='#4F4F4F' align='left'>Описание:
Легковесный, самодостаточный, легко портируемый, но полнофункциональный скрипт перевооружения авиатехники (вертолёты | самолёты| БПЛА) разработанный командой ARMAFRONT (®)
Позволяет провести опциональную заправку, починку, смену скина(окраски), быстрое восполнение предыдущего боекомплекта, возможность выбора готового набора(пресета) БК, выбор вооружения для каждого пилона, сохранение / загрузки своего комплекта.
Поддерживает всю авиатехнику в которой реализована система пилонов(Dynamic Loadouts). Проверенна на  RHS | CUP vehicle
<br />Инструкция:
<br />Чтобы воспользоваться сервисом подкатите / приземлите ЛА на зону СТО, прокрутите колесо мыши и выбери пункт 'Сервис', после чего вам откроется меню. Пункт 'Сервис' доступен только пилоту ЛА. Здесь вы можете выбирать поштучно (т.е. выбирать по отдельности)каждый пилон и подбирать нужное вам вооружение( ракеты / бомбы и т.д.).Функционал спроектирован схожим образом как и в 3D редакторе, где в 'свойствах' ЛА настраивается вооружение. Для удобства и скорости выбора вооружения есть кнопка 'отзеркалить'. Таким образом всё вооружение установленное на правое крыло, будет в таком же порядке установлено на левое на соответствующих пилонах.
Время обслуживания зависит от набора опций и услуг выбраных в меню.
Когда будут выбраны необходимые услуги нажмите 'Применить' для сохранения всех изменений. Дождитесь окончания времени обслуживания, после чего можете снова управлять ЛА.
Обслуживание БПЛА: Для обслуживания БПЛА вам нужно посадить его в зону СТО и бросить управление БПЛА. После этого вам будет доступно меню 'Сервис' при этом присутствие игрока в зоне СТО не обязательно(т.е. удалённое обслуживание).
<br /><a color='#FF0000' href='https://creativecommons.org/licenses/by-nc-sa/4.0/'>CopyRight CC 4.0</a> </t><t size='0.7' shadow='1' shadowColor='333333' align='Left'><img image='code\scripts\zload\img\cc.jpg'/><img image='code\scripts\zload\img\auth.jpg'/><img image='code\scripts\zload\img\free.jpg'/><img image='code\scripts\zload\img\ccr.jpg'/></t>
<t size='0.7' shadow='1' shadowColor='#4F4F4F' align='Left'>
<br />Авторы:
<br />Дизайн и функционал <a color='#FF0000' href='https://steamcommunity.com/id/dreamcast88'>Dreamcast</a>, разработка и скрипты <a color='#FF0000' href='http://steamcommunity.com/id/dextronderdie'>ZeroAinz</a>
<br /><a color='#FF0000' href='http://armafront.com/'>Armafront 2017</a></t>"];

_ctrl = _mainDisplay displayCtrl (1100);
_ctrl ctrlSetStructuredText parseText format["<t shadow='1' shadowColor='#4F4F4F' align='left'>%1</t>",localize "zlo_helptext_text"];
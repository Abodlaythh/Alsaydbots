function reply(msg)
text = nil
if msg and msg.content and msg.content.text then
xname =  (Redis:get(Fast.."Name:Bot") or "السيد") 
text = msg.content.text.text
if text:match("^"..xname.." (.*)$") then
text = text:match("^"..xname.." (.*)$")
end
end
if tonumber(msg.sender_id.user_id) == tonumber(Fast) then
return false
end
msg_chat_id = msg.chat_id
msg_id = msg.id
if text then
local neww = Redis:get(Fast.."Get:Reides:Commands:Group"..msg.chat_id..":"..text) or Redis:get(Fast.."All:Get:Reides:Commands:Group"..text)
if neww then
text = neww or text
end
end

--------
if text == "تفعيل ردود السورس" then
if not msg.Manger then
return send(msg_chat_id,msg_id,"• هذا الامر يخص المدير")
end
Redis:set(Fast.."Sasa:Jeka"..msg_chat_id,true)
send(msg_chat_id,msg_id,"• تم تفعيل ردود السورس")
end
if text == "تعطيل ردود السورس" then
if not msg.Manger then
return send(msg_chat_id,msg_id,"• هذا الامر يخص المدير")
end
Redis:del(Fast.."Sasa:Jeka"..msg_chat_id)
send(msg_chat_id,msg_id,"• تم تعطيل ردود السورس")
end



if Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then

if text == 'هاي' or text == 'هيي' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*ههــاي ڪيـڪ 🤎*',"md",false, false, false, false, reply_markup)
end
if text == 'سلام عليكم' or text == 'السلام عليكم' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*وعليكم السلام 🌝💜*',"md",false, false, false, false, reply_markup)
end
if text == 'سلام' or text == 'مع سلامه' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*الله وياك😢*',"md",false, false, false, false, reply_markup)
end
if text == 'خاص' or text == 'تع خاص' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*هاهاا الزاحف😂*',"md",false, false, false, false, reply_markup)
end
if text == 'النبي' or text == 'صلي علي النبي' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*عليه الصلاه والسلام 🌝💛*',"md",false, false, false, false, reply_markup)
end
if text == 'نعم' or text == 'يا نعم' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*نعم الله عليك 🌚❤️*',"md",false, false, false, false, reply_markup)
end
if text == '🙄' or text == '🙄🙄' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'* نزل عينك لتنحول😂❤️*',"md",false, false, false, false, reply_markup)
end
if text == '🙄' or text == '🙄🙄' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '❍ 𓏶 𝒄𝒓𝒊𝒔𝒕𝒊𝒏 • 𝒔𝒐𝒖𝒓𝒄?? 𓏶 ❍', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*نزل عينك لتنحول😂❤️*',"md",false, false, false, false, reply_markup)
end
if text == '😂' or text == '😂😂' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '❍ 𓏶 𝒄𝒓??𝒔𝒕𝒊𝒏 • 𝒔𝒐𝒖𝒓𝒄𝒆 𓏶 ❍', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*ضحكتك عثل مثلك يروحي 🌝❤️*',"md",false, false, false, false, reply_markup)
end 
if text == '😹' or text == '😹' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*ضحكتك عثل مثلك يروحي 🌝❤️*',"md",false, false, false, false, reply_markup)
end
if text == '🤔' or text == '🤔🤔' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'* بشنو  تفكر حب🤔*',"md",false, false, false, false, reply_markup)
end
if text == '🌚' or text == '🌝' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*القمر هذا شبهك 🙂❤️*',"md",false, false, false, false, reply_markup)
end
if text == '💋' or text == '💋💋' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*اانا هم اريد بوثوني😢💋*',"md",false, false, false, false, reply_markup)
end
if text == '😭' or text == '😭😭' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*لتبكي حياتي 😢💜*',"md",false, false, false, false, reply_markup)
end
if text == '🥺' or text == '🥺🥺' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*احبك لضوج😻🤍*',"md",false, false, false, false, reply_markup)
end
if text == '😒' or text == '😒😒' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*عدل وجهك وانت تحجي 😒🙄*',"md",false, false, false, false, reply_markup)
end
if text == 'بحبك' or text == 'حبق' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*وانا كمان بعشقك يا روحي 🤗🥰*',"md",false, false, false, false, reply_markup)
end
if text == 'مح' or text == 'بوسه' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*ممممح💋ححح مو خدود ضيم😍*',"md",false, false, false, false, reply_markup)
end
if text == 'هلا' or text == 'هلا وغلا' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*هلا بيك ياروحي 👋*',"md",false, false, false, false, reply_markup)
end
if text == 'هشش' or text == 'هششخرص' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*بنهش كتاكيت احنا هنا ولا اي ??😹*',"md",false, false, false, false, reply_markup)
end
if text == 'الحمد الله' or text == 'بخير الحمد الله' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*دايما ياحبيبي 🌝❤️*',"md",false, false, false, false, reply_markup)
end
if text == 'بف' or text == 'بص بف' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*وحيات امك ياكبتن خدوني معاكو بيف 🥺💔*',"md",false, false, false, false, reply_markup)
end
if text == 'خاص' or text == 'بص خاص' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*ها الزاحف😂😂💜*',"md",false, false, false, false, reply_markup)
end
if text == 'صباح الخير' or text == 'مساء الخير' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*انت الخير يعمري 🌝❤️*',"md",false, false, false, false, reply_markup)
end
if text == 'صباح النور' or text == 'باح الخير' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*صباح العسل 😻🤍*',"md",false, false, false, false, reply_markup)
end
if text == 'حصل' or text == 'حثل' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*خخخ امال 😹*',"md",false, false, false, false, reply_markup)
end
if text == 'اه' or text == 'اها' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*عيب ولك منا الناس 😂*',"md",false, false, false, false, reply_markup)
end
if text == 'كسم' or text == 'كسمك' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*عيب ياوسخ 🙄💔*',"md",false, false, false, false, reply_markup)
end
if text == 'بوتي' or text == 'يا بوتي' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'روح وعقل بوتك 🥺💔',"md",false, false, false, false, reply_markup)
end
if text == 'متيجي' or text == 'تع' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*لا عيب اخجل 😹💔*',"md",false, false, false, false, reply_markup)
end
if text == 'هيح' or text == 'هسه كاعد' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*صح النوم 😹💔*',"md",false, false, false, false, reply_markup)
end
if text == 'منور' or text == 'نورت' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*هذا نورك ي قلبي 🌝💙*',"md",false, false, false, false, reply_markup)
end
if text == 'باي' or text == 'انا ماشي' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*وين رايح وعايفني😢💔*',"md",false, false, false, false, reply_markup)
end
if text == 'ويت' or text == 'ويت يحب' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*اي الثقافه دي 😒😹*',"md",false, false, false, false, reply_markup)
end
if text == 'خخخ' or text == 'خخخخخ' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*اهدا يوحش ميصحش كدا 😒??*',"md",false, false, false, false, reply_markup)
end
if text == 'شكرا' or text == 'مرسي' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*العفو ياروحي 🙈🌝*',"md",false, false, false, false, reply_markup)
end
if text == 'حلوه' or text == 'حلو' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*انت الي حلو ياقمر 🤤🌝*',"md",false, false, false, false, reply_markup)
end
if text == 'بموت' or text == 'هموت' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*موت بعيد م ناقصين مصايب 😑😂*',"md",false, false, false, false, reply_markup)
end
if text == 'اي' or text == 'هلو' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*هـلُِآ بَريحٍھَہّ هـلُِي 🤗*',"md",false, false, false, false, reply_markup)
end
if text == 'طيب' or text == 'تيب' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*فرح خالتك قريب 😹💋💃🏻*',"md",false, false, false, false, reply_markup)
end
if text == 'حاضر' or text == 'حتر' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*حضرلك الخير يارب 🙂❤️*',"md",false, false, false, false, reply_markup)
end
if text == 'جيت' or text == 'انا جيت' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*يا هلا نورت 💜*',"md",false, false, false, false, reply_markup)
end
if text == 'بخ' or text == 'عو' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*يوه خضتني ياسمك اي 🥺💔*',"md",false, false, false, false, reply_markup)
end
if text == 'حبيبي' or text == 'حبيبتي' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*اوه ياه 🌝😂*',"md",false, false, false, false, reply_markup)
end
if text == 'تمام' or text == 'تمم' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'* دوم تمام يقلبي💜*',"md",false, false, false, false, reply_markup)
end
if text == 'خلاص' or text == 'خلص' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*خلصتت روحكك يبعيد 😹💔*',"md",false, false, false, false, reply_markup)
end
if text == 'سي في' or text == 'سيفي' then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ َ𝐒𝐎𝐔𝐑𝐂𝐄 𝐀𝐋𝐒𝐀𝐘𝐃 ✦', url = 't.me/boo000o'}, 
},
}
}
return send(msg_chat_id,msg_id,'*كفيه شقط سيب حاجه لغيرك 😎😂*',"md",false, false, false, false, reply_markup)
end

end


end
return {Fast = reply}
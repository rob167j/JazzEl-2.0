import telebot

TOKEN = "7717985950:AAFqNQrsHcWzRo1bwwh7ILVH3piBO1gGLiY"
bot = telebot.TeleBot(TOKEN)

@bot.message_handler(commands=['start', 'help'])
def send_welcome(message):
    bot.reply_to(message, "Jazz-El System Bot is online and ready.")

bot.polling()

class Pet

  def initialize

    @life = 5             # жызни от 1 до 10, при 0 умирает
    @hungry = 2           # желание есть от 1 до 10, 1 мин = -1 ед, съел кота = 10, пол кота = +5 ед.
    @sleep = 5            # желание спать от 1 до 10, 2 мин = -1 ед.
    @mood = 2             # настроение от 1 до 10, 2 мин = -1 ед, поел +1 ед, пошутил +2 ед
    @toilet = 5           # туалет от 1 до 10
    @comedy = 4           # комедийность от 1 до 10
    @sleeping = false     # спит или нет
    @state_life = "Нормальное здоровье, но есть над чем поработать."
    @state_hungry = "Голодный. Вы не любите кошек? Да вы просто не умеете их готовить!"
    @state_sleep = "Нормально вялый или слабо возбужденный."
    @state_mood = "У меня депресия, а вы и котом покормить отказываетесь меня("
    @state_toilet = "Скоро схожу, но время ещё есть."
    @state_mood = "Я в гневе. Ой-ой-ой, стоит только указать кому-нибудь на прореху в его мировоззрении,
 и он сразу обижается."
    puts "-----------------------------------------------------------------------------"
    puts "Бабах, на ваш гараж упал космический корабль!"
    puts "Из него еле живой вылазит инопланетянин."
    puts "Вы подходите к нему и спрашиваете: Кто-ты? Как тебя зовут?"
    puts "Альф: Меня зовут Гордон Шамуэй! Я жил на планете Мелмак."
    puts "Ты: На нашей планете ты - Alien Life Form — внеземная форма жизни"
    @being = "Внеземная форма жизни"
    puts "Ты: Поэтому я буду называть тебя: "
    @name = gets.chomp
    puts "Альф: Тогда я буду звать тебя Вилли:)"
    puts "-----------------------------------------------------------------------------"

  end

  def state
    puts "-----------------------------------------------------------------------------"
    puts "Сосотояние внеземной формы жизни по имени #{@name}:"

    case @life
    when 8..10
      @state_life = "Превосходное здоровье!"
    when 4..7
      @state_life = "Нормальное здоровье, но есть над чем поработать."
    else
      @state_life = "Спасай, я скоро умру("
    end
    puts "Здоровье     (1-10) сейчас #{@life}. #{@state_life}"

    case @hungry
    when 8..10
      @state_hungry = "Удивительно, но я сыт)"
    when 4..7
      @state_hungry = "Вроде голоден, а вроде и нет."
    else
      @state_hungry = "Голодный. Вы не любите кошек? Да вы просто не умеете их готовить!"
    end
    puts "Питание      (1-10) сейчас #{@hungry}. #{@state_hungry}"

    case @sleep
    when 8..10
      @state_sleep = "Я бодр как никогда)"
    when 4..7
      @state_sleep = "Нормально вялый или слабо возбужденный."
    else
      @state_sleep = "Увижу подушку, отключусь.\n
— С каких это пор ты спишь стоя?
— С тех пор, как сплю с этой коробкой на голове.
— Ты смешон.
— Ну не смешней, чем ты спишь: рот открыт, слюна по подушке"
    end
    puts "Энергия      (1-10) сейчас #{@sleep}. #{@state_sleep}"

    case @toilet
    when 8..10
      @state_toilet = "Не хочу в туалет."
    when 4..7
      @state_toilet = "Скоро схожу, но время ещё есть."
    else
      @state_toilet = "Пулей в туалет."
    end
    puts "Туалет       (1-10) сейчас #{@toilet}. #{@state_toilet}"

    case @mood
    when 8..10
      @state_mood = "Чудесное настроение. Лин, послушай старших: оставь искусство! Действуй по плану «А» — хватайся за первого попавшегося богача."
    when 4..7
      @state_mood = "Нормуль настрой."
    else
      @state_mood = "Я в гневе. Ой-ой-ой, стоит только указать кому-нибудь на прореху в его мировоззрении, и он сразу обижается."
    end
    puts "Настроение   (1-10) сейчас #{@mood}. #{@state_mood}"

    case @comedy
    when 8..10
      @state_comedy = "Я счастлив, и вот моя шутка.\n
— Я заметил, что ты все время что-нибудь чинишь, Вилли.\n
— Это потому, что ты все время что-нибудь ломаешь, Альф.\n
— Хорошо, что наши хобби дополняют друг друга!"
    when 4..7
      @state_comedy = "Я средне весел. Не нужно было сушить голову феном, а то у тебя мысли разлетелись."
    else
      @state_comedy = "я в печале. Боюсь, тебе придется любить меня до гроба."
    end
    puts "Комедийность (1-10) сейчас #{@comedy}. #{@state_comedy}"
    puts "-----------------------------------------------------------------------------"
  end

  def eat_cat
    @hungry = 10
    puts "Альф: Спасибо я наелся, землянские котики очень вкусные)"
    @comedy += 2
    @mood += 2
    @toilet -= 2
    time_of_passed
  end

  def eat_half_cat
    @hungry += 5
    @comedy += 1
    @mood += 1
    @toilet -= 2
    time_of_passed
  end

  def toilet
    @toilet = 10
    puts "Альф: Фух, успел до туалета.\n
— Что здесь такое?
— Дважды запеченная свинина.
— Больше похоже на дважды съеденную свинину."
    @hungry -=2
    @mood += 2
    @comedy += 1
    time_of_passed
  end

  def play
    @hungry -= 3
    @sleep -= 4
    @mood += 3
    @comedy +=2
    puts "Ну у тебя и игры, шутка чётко поиграли!!!"
    time_of_passed
  end

  def walk
    @hungry -= 3
    @sleep -= 3
    @mood += 2
    @toilet -= 3
    puts "Клёво погуляли)"
    time_of_passed
  end

  def fun
      @hungry -= 2
      @mood += 4
      @comedy += 5
      puts "Еще анекдот. Все ли грибы можно есть? Все, но некоторые только один раз."
      time_of_passed
  end

  def sleep
    @hungry -= 2
    @sleep = 10
    @mood += 3
    @toilet -= 3
    puts "Здорово поспал."
    time_of_passed
  end

  def ignor
    time_of_passed
    state
  end

  def help
    puts "-----------------------------------------------------------------------------"
    puts "state         - выводит все важные состояния персонажа;
eat_cat       - покормить Альфа одним котом);
eat_half_cat  - покормить Альфа половинкой кота);
toilet        - Альф идет в туалет;
play          - поиграть с Альфом;
walk          - погулять с Альфом;
fun           - повеселиться с Альфом;
sleep         - уложить спать."
    puts "-----------------------------------------------------------------------------"
  end

  private

  def time_of_passed

    @hungry -= 1           # желание есть от 1 до 10, 1 мин = -1 ед, съел кота = 10, пол кота = +5 ед.
    @sleep -= 1            # желание спать от 1 до 10, 2 мин = -1 ед.
    @mood -= 1             # настроение от 1 до 10, 2 мин = -1 ед, поел +1 ед, пошутил +2 ед
    @toilet -= 1           # туалет от 1 до 10
    @comedy -= 1

    if @hungry > 10
      @hungry = 10
    end
    if @hungry <= 0
      @hungry = 1
    end

    if @sleep > 10
      @sleep = 10
    end
    if @sleep <= 0
      @sleep = 1
    end

    if @mood > 10
      @mood = 10
      puts "Да когда я что ломал?! Ну, я имею в виду — в последнее время!
Ну на этой неделе... Ну хоть сегодня... Ну хоть после обеда..."
    end
    if @mood <= 0
      @mood = 1
    end

    if @toilet > 10
      @toilet = 10
      puts "У меня 8 желутков и всем нужно в туалет"
    end
    if @toilet <= 0
      @toilet = 1
    end

    if @comedy > 10
      @comedy = 10
      puts "Альф: Вилли, смотри: президент Кеннеди! А, нет, это «Мисс Болгария»..."
    end
    if @comedy <= 0
      @comedy = 1
    end


    @life = (@mood + @toilet + @comedy + @hungry + @sleep)/5
    if @life <= 1
      puts "Плохо у вас улечу на другую планету. Прощай!!!
GAME OVER"
      exit
    end

  end

end

alf = Pet.new

alf.state
alf.help
alf.play
alf.state
alf.fun
alf.state
alf.ignor
alf.ignor
alf.ignor
alf.ignor
alf.ignor
alf.ignor
alf.ignor
alf.ignor
    # Про еду
    #
    # Твои веки тяжелеют... Ты засыпаешь... Ты больше не кот... Ты бублик.
    #
    # Я сидел тихо, мирно. Потом проголодался. Дальше как в тумане.
    #
    # Овощи — это не еда, это то, что едят с едой!
    #
    # — Правосудие беспристрастно!
    # — А если я предложу правосудию печенье?
    # — Правосудие рассмотрит ваше предложение.
    #
    # Вы не любите кошек? Да вы просто не умеете их готовить!
    #
    # — Что здесь такое?
    # — Дважды запеченная свинина.
    # — Больше похоже на дважды съеденную свинину.
    #
    # Как задолбали эти тупые правила: не есть кота, не бить посуду, не есть кота.
    #
    # — Если понадоблюсь, я буду у холодильника.
    # — Не понадобишься.
    # — Все равно буду у холодильника.
    #
    # — Какой чай вы предпочитаете: травяной или обычный?
    # — Я предпочитаю скотч.
    #
    # Еще анекдот. Все ли грибы можно есть? Все, но некоторые только один раз.
    #
    # Давайте сперва перекусим, а дружелюбие проявите потом.


    # Про любовь
    #
    # У нас говорят: «Если любишь кого-то — отпусти его. Если он к тебе вернется — он твой. Если его переедет машина — так тому и быть».
    #
    # Ей пришла в голову глупейшая мысль, что она меня больше не любит.
    #
    # — Ты не хочешь, чтобы парень, который тебе нравится, знал, что нравится тебе?!
    # — Именно.
    # — Логично.
    #
    # Я вас, люди, не понимаю. Если вы любите кого-то, вы боитесь, чтоб он узнал об этом.
    # Но, когда оказывается, что вы ему тоже небезразличны, вы жалеете о потерянном времени.
    # А если завтра ваша планета взорвется?
    #
    # Боюсь, тебе придется любить меня до гроба.

    # Про политику
    #
    # — Чтобы на Земле наступил мир, мировые лидеры должны обняться и расцеловаться.
    # — Ты думаешь, Рейган с Горбачевым будут целоваться?
    # — Не в губы...
    #
    # Позовите репортеров: у нас демократия умерла!
    #
    # — Альф, как ты думаешь решить проблему бездомных?
    # — Уже решил!
    # — Как решил?
    # — Для каждого из них строится дом.
    # — А что ты думаешь делать с безработицей?
    # — Ее уже нет. Все строят дома!
    # — Может, и войн больше нет?
    # — А кому воевать? Все бегают, обои для новых домов выбирают.
    #
    # Вилли, смотри: президент Кеннеди! А, нет, это «Мисс Болгария»...
    #
    # — Я требую восстановления озонового слоя Земли.
    # — Альф, к субботе мы не успеем...


    # Советы
    #
    # Лин, послушай старших: оставь искусство! Действуй по плану «А» — хватайся за первого попавшегося богача.
    #
    # Ой-ой-ой, стоит только указать кому-нибудь на прореху в его мировоззрении, и он сразу обижается.
    #
    # — Не стоит так ходить, Вилли!
    # — Почему?
    # — Потому что я проигрываю!
    #
    # — И не вини себя.
    # — А я и не виню.
    # — Значит, ты слушал меня невнимательно.
    #
    # Не нужно было сушить голову феном, а то у тебя мысли разлетелись.

    # Про разрушения
    #
    # Да когда я что ломал?! Ну, я имею в виду — в последнее время!
    # Ну на этой неделе... Ну хоть сегодня... Ну хоть после обеда...
    #
    # — Кейт! Вилли! Я поранил коленку! Идите поцелуйте!
    #
    # — Это такая игрушка — пазлы.
    # — Она поломана!
    # — В этом и смысл, Альф. Ты должен ее собрать.
    # — Чего это?! Я ее не ломал!
    #
    # Барбекю уже разгорелось... особенно колеса.
    #
    # Пожарная? Скорее приезжайте! На меня напал гигантский таракан!
    # Не приедете? Тогда я кот и не могу слезть с дерева.
    #
    #
    # — Где ты сейчас? Чем ты занимаешься?
    # — Я в спальне, примеряю синее платье Кейт.
    # — Ни на шаг оттуда!
    # — Куда же я пойду, у меня нет подходящих туфель.
    #
    # — Альф, где ты взял эту молнию?
    # — Вилли, помнишь свою старую куртку, которую ты хотел выбросить, — не выбрасывай ее...
    # Я отрезал эту молнию с твоего нового пальто.
    #
    # Жир горит! Жир горит! Брось занавески, туши меня!
    #
    # — Я заметил, что ты все время что-нибудь чинишь, Вилли.
    # — Это потому, что ты все время что-нибудь ломаешь, Альф.
    # — Хорошо, что наши хобби дополняют друг друга!
    #
    # — Я уже месяц под домашним арестом.
    # — Не месяц, а три дня.
    # — Тогда почему я нацарапал тридцать черточек на перилах?
    # — Потому что ты вандал.

    # О разном
    #
    # — С каких это пор ты спишь стоя?
    # — С тех пор, как сплю с этой коробкой на голове.
    # — Ты смешон.
    # — Ну не смешней, чем ты спишь: рот открыт, слюна по подушке...
    #
    # Когда ползаешь под чужими окнами, и не такое услышишь!
    #
    # — Ты знаешь, кто не очень рад из-за ты-знаешь-кого.
    # — Ты скажи ты-знаешь-кому, пусть идет он-знает-куда.
    #
    # — И что Рэнди?
    # — Неизвестно. Информация поступила в его голову и теперь безуспешно ищет там мозги.
    #
    # Ладно, посмотрим, что там у Вилли в кармане... О Боже, чья-то рука!
    #
    # Это я такой чувствительный, или в комнате какая-то напряженность?
    #
    # — По-моему, мы договаривались, что ты будешь спрашивать разрешения, прежде чем трогать мои инструменты.
    # — Извини. Можно?
    # — Да.
    # — Вот видишь, ты по-прежнему главный.
    #
    # Я устал, я моргаю с трудом!

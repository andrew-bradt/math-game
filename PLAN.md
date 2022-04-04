# OVERVIEW

## Description
- Create a 2-Player math game where players take turns to answer simple math addition problems. 
- A new math question is generated for each turn by picking two numbers between 1 and 20. 
- The player whose turn it is is prompted the question and must answer correctly or lose a life.
- Both players start with 3 lives. 
- They lose a life if they mis-answer a question. 
- At the end of every turn, the game should output the new scores for both players, so players know where they stand.
- The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

## Things to Consider
- State: Storing data describing themselves (variables)
- Behavior: Defining actions that can be performed on them (methods)

- What information is relevant to each class?
- What will they need in order to be initialized?
- What public methods will be defined on them?

- Which class will contain the game loop (where each instance of the loop is the other players turn)?
- Which class should manage who the current_player is?
- Which class(es) will contain user I/O and which will not have any?

# PLAN

## Entities
- Game
    - Constructor 
      - player1 = Player.new
      - player2 = Player.new
    - Behaviour
      - game_over?
        - return !player1.has_lives? && !player2.has_lives?
      - end_game
        - 
      
- Turn
  - Constructor
    - Arguments - active_player, inactive_player, question
    - Instance Variables 
      - @active_player = Player - read
      - @inactive_player = Player - read
    - Behaviour
      - start
        - puts --- NEW TURN ---
        - invoke question.ask
      - end
        - Arguments - result (from question)
        - invoke display_result
        - if result is false, active_player.reduce_lives
        - 
      - display_result
        - Arguments - result
        - if true - puts @name YES! you are correct
        - if false - puts @name Seriously? No!
        - puts @active_player.score vs. @inactive_player.score

- Question
  - Constructor
    - Arguments - turn (Turn object)
    - Instance Variables
      - @turn - turn
      - @int1 - random num 1-20 - private
      - @int2 - random num 1-20 - private
  - Behaviour
    - ask
      - make prompt - question made by injecting @int1 and @int2 into template string
      - prints question to console
      - invoke get_input
    - get_input
      - wait for user input
      - parse to number
      - invoke correct?
    - correct?
      - Arguments - answer (int)
      - result = check if answer is equal to @int1 + @int2
      - invoke turn.end and pass result as arg
    
- Player
  - Constructor
    - Arguments - name
    - Instance Variables
      - @name - name - read
      - @lives - int - 3 - read
  - Behaviour
    - has_lives?
      - return @lives != 0
    - reduce_lives
      - return @lives -= 1
    - score
      - short_name = name[0] + name[name.length - 1] - read
      - return @name: @lives/3





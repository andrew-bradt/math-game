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
    - Arguments - players - array of player objects
    - Instance Variables 
      - @players
      
    - Behaviour
      - begin
        - puts --- NEW TURN ---
        - invoke handle_answer
        - invoke display_score
      
      - handle_answer (correct?)
        - active_player = players[0]
        - if correct? is true, puts active_player.name YES! You are correct.
        - if correct? is false, puts active_player.name Seriously? No! and invoke active_player.    reduce_lives

      - display_score
        - score = ""
        - for each player (except for last), append player.score and vs. 
        - puts score

- Question
  - Constructor - none
  - Constants 
    - INT_1 rand(1..20)
    - INT_2 rand(1..20)
  - Behaviour
    - ask - public
      - invoke correct? with prompt and return result
    - correct? - private
      - Arguments - answer
      - return answer == INT_1 + INT_2
    - prompt - private
      - prints question string
      - get user input, convert to int, return
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





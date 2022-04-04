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
- Player, Question, Turn, Game

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
    - short_name - read
      - name[0] + name[name.length - 1]
    - score
      - @lives/3

- Question
  - Constructor
    - Arguments - None
    - Instance Variables:
      - @int_1 rand(1..20)
      - @int_2 rand(1..20)
  - Behaviour
    - ask - public
      - Arguments: Name
      - invoke correct? with prompt(name) and return result
    - correct? - private
      - Arguments - answer
      - return answer == INT_1 + INT_2
    - prompt - private
      - Arguments: name
      - format question string with name, INT_1 and INT_2
      - get user input, convert to int, return

- Turn
  - Constructor
    - Arguments - players - array of player objects
    - Instance Variables 
      - @players

  - Behaviour
    - begin(question obj) - public
      - active_player = players[0]
      - puts --- NEW TURN ---
      - invoke handle_answer with question.ask()
      - invoke display_score
    
    - handle_answer (correct?, active_player) - private
      - if correct? is true, puts active_player.name YES! You are correct.
      - if correct? is false, puts active_player.name Seriously? No! and invoke active_player.reduce_lives

    - display_score - private
      - score = ""
      - for each player (except for last), append player.short_name: player.score and vs. to score
      - puts score

- Game
  - Constructor (array of player objects)
  - Instance Variables
    - @players = []

  - Behaviour
    - game_over?
      - Iterate over @players 
        - invoking has_lives? for a player.  if false, early return true
        - return false if no early return
    - loop
      - until game_over?
        - current_turn = Turn.new(@players)
        - current_turn.begin
        - rotate players
      - invoke end_game
    - end_game
      - winner = iterate over players and find player with most lives
      - puts "winner.name wins with a score of winner.score"





input = <<~INPUT
Player 1:
29
25
9
1
17
28
12
49
8
15
41
31
39
24
40
23
6
21
13
45
20
2
42
47
10

Player 2:
46
27
44
18
30
50
37
11
43
35
34
4
22
7
33
16
36
26
48
19
38
14
5
3
32
INPUT

# input = <<~INPUT
# Player 1:
# 9
# 2
# 6
# 3
# 1

# Player 2:
# 5
# 8
# 4
# 7
# 10
# INPUT

raw_players = input.split("\n\n")

player1 = raw_players[0].split("\n")[1..].map(&:to_i)
player2 = raw_players[1].split("\n")[1..].map(&:to_i)

while !(player1.empty? || player2.empty?)
  player1_top = player1.delete_at(0)
  player2_top = player2.delete_at(0)
  if player1_top > player2_top
    player1.push(player1_top, player2_top)
  else
    player2.push(player2_top, player1_top)
  end
end

winners_deck = player1.empty? ? player2: player1
score = 0
winners_deck.reverse.each_with_index do |val, idx|
  score += val * (idx+1)
end

puts "Part 1"
puts score

PLAYER1 = 'PLAYER1'
PLAYER2 = 'PLAYER2'

def recursive_game(p1, p2, depth = 0)
  cards_seen = Hash.new {|h1,k1| h1[k1] = Hash.new(false)}
  round = 1
  while !(p1.empty? || p2.empty?)
    # Before dealing a card, if same cards and same decks in same order (Player 1)
    if cards_seen[p1][p2]
      return PLAYER1 
    end
    cards_seen[p1][p2] = true
    p1_top = p1.delete_at(0)
    p2_top = p2.delete_at(0)

    if p1.length >= p1_top && p2.length >= p2_top
      # Recursive Round
      round_winner = recursive_game(p1.take(p1_top), p2.take(p2_top), depth + 1)
      if round_winner == PLAYER1
        p1.push(p1_top, p2_top)
      else
        p2.push(p2_top, p1_top)
      end
    else
      # Non Recursive Round the winner of the round is the player with the higher-value card.
      if p1_top > p2_top
        p1.push(p1_top, p2_top)
      else
        p2.push(p2_top, p1_top)
      end
    end
    round += 1
  end


  # Print the results
  if depth == 0
    winners_deck = p1.empty? ? p2: p1
    score = 0
    winners_deck.reverse.each_with_index do |val, idx|
      score += val * (idx+1)
    end
    puts "Player 2 is the winner" if p1.empty?
    puts "Player 1 is the winner" if p2.empty?
    puts score
  end
  return p1.empty? ? PLAYER2 : PLAYER1
end

puts "Part 2"
player1 = raw_players[0].split("\n")[1..].map(&:to_i)
player2 = raw_players[1].split("\n")[1..].map(&:to_i)
recursive_game(player1, player2)
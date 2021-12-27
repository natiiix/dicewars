import pickle

with open("board_states-1640624842.1766994.pickle", "rb") as f:
    info = pickle.load(f)
    winner = info[1]
    count = info[2]
    states = info[0]
    print(winner, count, len(states), len(states[0]), states[0], len(states[-10]), states[-10])

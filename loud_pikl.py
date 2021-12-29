import pickle

with open("supp-xkoste12/data/game_1640631923.9334884.pickle", "rb") as f:
    info = pickle.load(f)
    winner = info[0]
    neighbors = info[1]
    states = info[2]
    print(winner, len(neighbors), len(states), len(states[0]), neighbors, states[0], states[-1])

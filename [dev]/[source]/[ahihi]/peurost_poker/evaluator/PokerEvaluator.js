var fs = require("fs");
var path = require("path");
const root = GetResourcePath(GetCurrentResourceName());

let ranks;
let HANDTYPES = [
  "invalid hand",
  "High Card",
  "One Pair",
  "Two Pairs",
  "Three Of A Kind",
  "Straight",
  "Flush",
  "Full house",
  "Four Of A Kind",
  "Straight Flush"
]

let CARDS = {
  "2_2": 1,
  "1_2": 2,
  "3_2": 3,
  "4_2": 4,
  "2_3": 5,
  "1_3": 6,
  "3_3": 7,
  "4_3": 8,
  "2_4": 9,
  "1_4": 10,
  "3_4": 11,
  "4_4": 12,
  "2_5": 13,
  "1_5": 14,
  "3_5": 15,
  "4_5": 16,
  "2_6": 17,
  "1_6": 18,
  "3_6": 19,
  "4_6": 20,
  "2_7": 21,
  "1_7": 22,
  "3_7": 23,
  "4_7": 24,
  "2_8": 25,
  "1_8": 26,
  "3_8": 27,
  "4_8": 28,
  "2_9": 29,
  "1_9": 30,
  "3_9": 31,
  "4_9": 32,
  "2_10": 33,
  "1_10": 34,
  "3_10": 35,
  "4_10": 36,
  "2_11": 37,
  "1_11": 38,
  "3_11": 39,
  "4_11": 40,
  "2_12": 41,
  "1_12": 42,
  "3_12": 43,
  "4_12": 44,
  "2_13": 45,
  "1_13": 46,
  "3_13": 47,
  "4_13": 48,
  "2_14": 49,
  "1_14": 50,
  "3_14": 51,
  "4_14": 52
}

function evalHand(cards) {
  if (!ranks) {
    console.log("HandRanks.dat not loaded");
  }
  if (cards.length != 7 && cards.length != 6 && cards.length != 5) {
    console.log("Hand must be 5, 6, or 7 cards, but got " + cards.length);
  }
  //if passing in string formatted hand, convert first
  if (typeof cards[0] == "string") {
    cards = cards.map(function(card) {
      return CARDS[card.toLowerCase()];
    });
  }
  return evaluate(cards);
}

function evaluate(cards) {
  let p = 53;
  for (let i = 0; i < cards.length; i++) {
    p = evalCard(p + cards[i]);
  }

  
  if (cards.length == 5 || cards.length == 6) {
    p = evalCard(p)
  }
  return {
    handType: p >> 12,
    handRank: p & 0x00000fff,
    value: p,
    handName: HANDTYPES[p >> 12]
  }
}

function evalCard(card) {
  return ranks.readUInt32LE(card * 4);
}

let ranksFile = path.join(root, "/evaluator/HandRanks.dat")
ranks = fs.readFileSync(ranksFile);

on("peu_poker:evaluate", (deck, cb) => {
  cb(evalHand(deck));
});
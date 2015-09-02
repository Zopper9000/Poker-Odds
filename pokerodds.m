%Poker odds calculator written for Texas Hold 'em
%David Lu
%02/09/2015
%Returns odds of the home hand winning/splitting the pot
%Requires 3 inputs
%table - cards on the table
%home - cards held by the player
%visit - cards held by other players
%All cards are represented by an integer 1-52, 0 denotes an unknown card
function [win, split] = pokerodds(table, home, visit)



win = 0;
split = 0;
end
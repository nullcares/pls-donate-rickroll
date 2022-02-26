local lp = game.Players.LocalPlayer
local value = lp:WaitForChild('leaderstats').Raised

local con = getgenv()
con.running = false

con.delay = 5
con.words = {
      'Were no strangers to love';
      'You know the rules and so do I';
      'A full commitments what Im thinking of';
      'You wouldnt get this from any other guy';
      'I just wanna tell you how Im feeling';
      'Gotta make you understand';
      'Never gonna give you up';
      'Never gonna let you down';
      'Never gonna run around and desert you';
      'Never gonna make you cry';
      'Never gonna say goodbye';
      'Never gonna tell a lie and hurt you';
      'Weve known each other for so long';
      'Your hearts been aching, but youre too shy to say it';
      'Inside, we both know whats been going on';
      'We know the game, and were gonna play it';
      'And if you ask me how Im feeling';
      'Dont tell me youre too blind to see';
      'Never gonna give you up';
      'Never gonna let you down';
      'Never gonna run around and desert you';
      'Never gonna make you cry';
      'Never gonna say goodbye';
      'Never gonna tell a lie and hurt you';
      'Never gonna give you up';
      'Never gonna let you down';
      'Never gonna run around and desert you';
      'Never gonna make you cry';
      'Never gonna say goodbye';
      'Never gonna tell a lie and hurt you';
      'Ooh (Give you up)';
      'Ooh-ooh (Give you up)';
      'Ooh-ooh';
      'Never gonna give, never gonna give (Give you up)';
      'Ooh-ooh';
      'Never gonna give, never gonna give (Give you up)';
      'Weve known each other for so long';
      'Your hearts been aching, but youre too shy to say it';
      'Inside, we both know whats been going on';
      'We know the game, and were gonna play it';
      'I just wanna tell you how Im feeling';
      'Gotta make you understand';
      'Never gonna give you up';
      'Never gonna let you down';
      'Never gonna run around and desert you';
      'Never gonna make you cry';
      'Never gonna say goodbye';
      'Never gonna tell a lie and hurt you';
      'Never gonna give you up';
      'Never gonna let you down';
      'Never gonna run around and desert you';
      'Never gonna make you cry';
      'Never gonna say goodbye';
      'Never gonna tell a lie and hurt you';
      'Never gonna give you up';
      'Never gonna let you down';
      'Never gonna run around and desert you';
      'Never gonna make you cry';
      'Never gonna say goodbye';
      'Never gonna tell a lie and hurt you';
}

local function say(text)
      game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text, "All")
end

value.Changed:Connect(function()
      if not con.running then
            con.running = true
            for _, v in pairs(con.words) do
                  say(v)
                  task.wait(con.delay)
            end
            task.wait(3)
            say('Thanks for donating! I hope youve my script and i encourage you to donate again!')
      end
end)

while true do
      if con.running == false then
            say("I will sing 'Never Gonna Give You Up' each donation!")
      end
      task.wait(30)
end
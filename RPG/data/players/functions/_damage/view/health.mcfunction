
    scoreboard players operation @s Core.Health = @s Players.Health.Now
    scoreboard players operation @s Core.Health *= $200 Core.Int
    scoreboard players operation @s Core.Health /= @s Players.Health.Max
    scoreboard players operation @s Core.Health *= $10 Core.Int
    execute if score @s Core.Health matches ..0 run scoreboard players set @s Core.Health 1
    scoreboard players operation @s ScoreToHealth = @s Core.Health
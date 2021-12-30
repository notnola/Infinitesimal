return Def.ActorFrame {
    InitCommand=function(self)
        self:Center():queuecommand("ZoomY")
    end,

    ZoomYCommand=function(self)
        self:accelerate(3.4288)
        :zoom(0.96)
        :decelerate(3.4288)
        :zoom(1)
        :queuecommand("ZoomY")
    end,

    Def.Sprite {
        Texture=THEME:GetPathG("", "Logo/Logo"),
        InitCommand=function(self)
            self:zoom(0.75)
        end
    },

    Def.Sprite {
        Texture=THEME:GetPathG("", "Logo/Logo"),
        InitCommand=function(self)
            self:zoom(0.75)
            :queuecommand("Pulse")
        end,
        PulseCommand=function(self)
            self:sleep(3.4288)
            :diffusealpha(0.5)
            :zoom(0.75)
            :decelerate(1.7144)
            :zoom(0.85)
            :diffusealpha(0)
            :sleep(1.7144)
            :queuecommand("Pulse")
        end
    },

    Def.Sprite {
        Texture=THEME:GetPathG("", "Logo/BlurLogo"),
        InitCommand=function(self)
            self:zoom(1.25)
            :diffusealpha(0)
            :queuecommand("Flash")
        end,
        FlashCommand=function(self)
            self:accelerate(3.4288)
            :diffusealpha(0.8)
            :decelerate(3.4288)
            :diffusealpha(0)
            :queuecommand("Flash")
        end
    }
}
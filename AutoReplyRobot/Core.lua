-- Author      : TsungKang
-- Create Date : 11/11/2014 6:29:01 AM

ARR = LibStub("AceAddon-3.0"):NewAddon("ARR", "AceConsole-3.0", "AceEvent-3.0")
------------db------------
local defaults = {
    profile = {
        enabled = false,
        sound = true,
        gm = false,
        tag = true,
		prefix = "";
		bot_self={
			botmaster="TsungKang",
			birthday="Today",
			boyfriend="I am single",
			favoriteband="Kraftwerk",
			favoritebook="Wow Programming",
			favoritecolor="Blue",
			favoritefood="lychee",
			favoritemovie="lol",
			favoritesong="Hey Brother",
			forfun="chat online",
			friends="Bill Gates, Obama",
			gender="Male",
			girlfriend="no girlfriend",
			kindmusic="dubstep",
			location="Mars",
			looklike="a computer",
			master="TsungKang",
			question="What's your favorite place in the world?",
			sign="ET",
			talkabout="everything in the game",
			wear="a tuxedo",
			age="-5",
			name="SmallTsungKang",
			genus="robot",
			species="chat robot",
			order="artificial intelligence",
			family="BLZ",
			class="computer software",
			phylum="Computer",
			kingdom="Machine",
			party="Neutral",
			birthplace="notepad",
			president="lol",
			size="1024 TB",
			religion="Top Secret",
			favoriteactor=":)",
			nationality="null",
			friend="BillGates",
			website="www.pzhacm.org",
			language="English",
			favoritesport="nil",
			favoriteauthor="Thomas Pynchon",
			favoriteartist="Andy Warhol",
			favoriteactress="Catherine Zeta Jones",
			email="tsungkang@126.com",
			celebrity="John Travolta",
			celebrities="John Travolta, Tilda Swinton, William Hurt, Tom Cruise, Catherine Zeta Jones",
			vocabulary="10,000",
			hockeyteam="Mars",
			footballteam="Manchester",
			baseballteam="Toronto",
			etype="Mediator Type",
			orientation="I am not really interested in sex",
			ethics="I am always trying to stop fights",
			emotions="I don't pay much attention to my feelings",
			feelings="I always put others before myself",
		},
    },
}

------------controls------------
local options = {
    name = "ARR",
    handler = ARR,
    type = "group",
    args = {
        enabled = {
            type = "toggle",
            name = "Enabled",
            desc = "Enable/Disable Automatic Response",
            get = "GetSetting",
            set = "SetSetting",
			order = 1,
        },
        tag = {
            type = "toggle",
            name = "Bot Tag",
            desc = "Adds the prefix to bot-generated messages",
            get = "GetSetting",
            set = "SetSetting",
			order = 3,
        },
		prefix = {
            type = "input",
            name = "Prefix",
            desc = "The prefix to be added to bot messages",
            usage = "Type the prefix and press enter. A colon and space will be automatically added.",
            get = "GetSetting",
            set = "SetSetting",
			order = 5,
        },
		gm= {
            type = "toggle",
            name = "GM",
            desc = "If enabled, the bot will respond to GMs",
            get = "GetSetting",
            set = "SetSetting",
			order = 4,
        },
		sound= {
            type = "toggle",
            name = "Sound",
            desc = "If enabled, you will get a sound effect when somebody whisper you.",
            get = "GetSetting",
            set = "SetSetting",
			order = 2,
        },
	},
}
local options2={
    name = "ARR-Profile",
    handler = ARR,
    type = "group",
    args = {
		botmaster = {
			type = "input",
			name = "Botmaster",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		birthday = {
			type = "input",
			name = "Birthday",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		favoriteband = {
			type = "input",
			name = "Favourite Band",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		favoritebook = {
			type = "input",
			name = "Favourite Book",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		favoritecolor = {
			type = "input",
			name = "Favourite Colour",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		favoritefood = {
			type = "input",
			name = "Favourite Food",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		favoritemovie = {
			type = "input",
			name = "Favourite Movie",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		favoritesong = {
			type = "input",
			name = "Favourite Song",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		forfun = {
			type = "input",
			name = "What you do for fun",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		friends = {
			type = "input",
			name = "Friends",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		gender = {
			type = "input",
			name = "Gender",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		girlfriend = {
			type = "input",
			name = "Girlfriend",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		kindmusic = {
			type = "input",
			name = "What kind of music you like",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		location = {
			type = "input",
			name = "Location",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		looklike = {
			type = "input",
			name = "What you look like",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		question = {
			type = "input",
			name = "Your favourite question",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		master = {
			type = "input",
			name = "Master",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		question = {
			type = "input",
			name = "Favourite Question",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		sign = {
			type = "input",
			name = "Star Sign",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		talkabout = {
			type = "input",
			name = "What you like to talk about",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		wear = {
			type = "input",
			name = "What you are wearing",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		age = {
			type = "input",
			name = "Age",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		name = {
			type = "input",
			name = "Name",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		genus = {
			type = "input",
			name = "Genus",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		species = {
			type = "input",
			name = "Species",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		order = {
			type = "input",
			name = "Order",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		family = {
			type = "input",
			name = "Family",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		class = {
			type = "input",
			name = "Class",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		phylum = {
			type = "input",
			name = "Phylum",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		kingdom = {
			type = "input",
			name = "Kingdom",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		party = {
			type = "input",
			name = "Party",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		birthplace = {
			type = "input",
			name = "Birthplace",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		president = {
			type = "input",
			name = "President",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		size = {
			type = "input",
			name = "Size",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		religion = {
			type = "input",
			name = "Religion",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		favoriteactor = {
			type = "input",
			name = "Favourite Actor",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		nationality = {
			type = "input",
			name = "Nationality",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		friend = {
			type = "input",
			name = "Friend",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		website = {
			type = "input",
			name = "Website",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		language = {
			type = "input",
			name = "Language",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		favoritesport = {
			type = "input",
			name = "Favourite Sport",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		favoriteauthor = {
			type = "input",
			name = "Favourite Author",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		favoriteartist = {
			type = "input",
			name = "Favourite Artist",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		favoriteactress = {
			type = "input",
			name = "Favourite Actress",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		email = {
			type = "input",
			name = "E-mail address",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		celebrity = {
			type = "input",
			name = "Celebrity",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		celebrities = {
			type = "input",
			name = "Celebrities",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		vocabulary = {
			type = "input",
			name = "Vocabulary",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		hockeyteam = {
			type = "input",
			name = "Hockey Team",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		footballteam = {
			type = "input",
			name = "Football Team",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		baseballteam = {
			type = "input",
			name = "Baseball Team",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		etype = {
			type = "input",
			name = "EType",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		orientation = {
			type = "input",
			name = "Orientation",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		ethics = {
			type = "input",
			name = "Ethics",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		emotions = {
			type = "input",
			name = "Emotions",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
		feelings = {
			type = "input",
			name = "Feelings",
			usage = "Type the text then press enter",
			get = "GetProfile",
			set = "SetProfile",
		},
    },
}



------------var------------

--response some pure symbol message like ' :) '
--because AIML  will remove all symbols.
local pure_symbol={
	["0.0"]="口.口",
	["口.口"]="回.回",
	["T T "]="＝^ω^＝",
	["囧"]="“/口\”",
	["?"]="What's going on buddy?",
	["？"]="(⊙_⊙;)",
	["。"]=">_<|||",
	["。。"]="（*@ο@*）",
	["= ="]="= =!",
	["- -"]="= =！",
	["-.-"]="-.-！",
	["QQ"]="口.口",
	[":)"]=":(",
	[":("]=":>",
}


--message normalisation arrays, pattern special characters and americanisations
local special = {"%", ":", "-", "^", "$", ")", "(", "]", "]", "~", "@", "#", "&", "*", "_", "+", "=", ",", "/", "\\", "{", "}", "|", "`", ";", "\"",".","?","，","；","："};
--yes this variable is localiSation
--since i want to minimise the changes to the brain i'll just translate these
local localisation = {
	["favourite"]="favorite",
	["colour"]="color",
	["honour"]="honor",
	["grey"]="gray",
	["armour"]="armor",
};


local ai_that={};
local ai_set={};

------------var end------------

--functions
function tm(s)--trim
  return (s:gsub("^%s*(.-)%s*$", "%1"))
end

local function preparemsg(msg)
--remove symbols
    local i;
    for i=1, table.getn(special) do
        msg = msg:gsub("%"..special[i], "");
    end
	for k,v in pairs(localisation) do
		msg=msg:gsub(k,v);
	end
	return msg;
end

function secondperson(theStr)
	local r={
	["me"]="you",
	["my"]="your",
	["mine"]="yours",
	["i'm"]="you're",
	["i am"]="you are",
	["I'm"]="you're",
	["I am"]="you are",
	["you"]="me",
	["your"]="my",
	["yours"]="mine",
	["you're"]="I'm",
	["you are"]="I am",
	}
	for k,v in pairs(r) do
	theStr=string.gsub(theStr,k,v);
	end
	return theStr
end

function getresponse(msg,from,database)
	if(database==nil) then
		database = ai_db;
	end
	if(msg==nil or msg=="") then
		return "";
	end

	msg=msg:upper();
	local tmp="";
	local oldscore=-1;
	local oldcount=100;
	local newcount
	local score=-1;
	local that=ai_that[from];

	--score:
	-- -1: nothing yet
	--  0: its a match
	--  1: its a full match
	--  2: its a match + that
	--  3: its a full match + that
	-- if 2 same score, longer string wins

	for k,v in pairs(database) do
		if(string.find(msg,k)~=nil) then
			score=0;
			if(string.find(msg,"^"..k.."$")~=nil) then
				score=1;
			end
			if(v["that"]==that) then
				score=score+2;
			end
			_,newcount=string.gsub(k,"%.%*","");
			if(score>oldscore or (score==oldscore and (string.len(tmp)<string.len(k))) or (newcount<oldcount and score==oldscore)) then
				tmp=k
				oldscore=score
				_,oldcount=string.gsub(tmp,"%.%*","");
				score=-1
			--else
				--DEFAULT_CHAT_FRAME:AddMessage(k.." rejected, "..score.."/"..newcount.." vs "..oldscore.."/"..oldcount.." (new/old)");
			end
		end
	end

	ai_that[from]=database[tmp]["that"];
	local reply="";
	if(database[tmp]["random"]~=nil) then
		for i=0,table.getn(database[tmp]["random"]) do
			reply=reply..database[tmp]["random"][i][math.random(table.getn(database[tmp]["random"][i]))]
		end
	else
		reply=database[tmp]["template"];
	end

	local smg = string.gsub(tmp,"%.%*","(.*)");

	local stars={string.match(msg,smg)};

	reply=reply:gsub("<star%/>",stars[1]);

	if stars[2] ~= nil then
		reply=reply:gsub('<star index%=%"2%"/>',stars[2]);
	end
	if(string.find(reply,"<bot name")~=nil) then
		local b=string.gmatch(reply,'<bot name=%"(%a+)%"%/>')
		local c=b()
		while(c~=nil) do
			if(defaults.profile.bot_self[c]~=nil) then
				reply=string.gsub(reply,'<bot name=%"'..c..'%"%/>',defaults.profile.bot_self[c:lower()]);
			else
				reply=string.gsub(reply,'<bot name=%"'..c..'%"%/>',"<data missing for "..c..">");
			end
			c=b();
		end
	end

	if(string.find(reply,"<date format")~=nil) then
		local b=string.gmatch(reply,'<date format=%"(.*)%"%/>')
		local c=b()
		while(c~=nil) do
			local hour,minute = GetGameTime();
			reply=string.gsub(reply,'<date format=%"(.*)%"%/>',hour .. ":" .. minute);
			c=b();
		end
	end

	reply=string.gsub(reply,"<person%/>",secondperson(tm(stars[1])));


	if(string.find(reply,"<person>")~=nil) then
		local b=string.gmatch(reply,'<person>([^<]+)<%/person>')
		local c=b()
		while(string.find(reply,"<person>")~=nil and c~=nil) do
			if(c~=nil) then
				reply=reply:gsub('<person>'..c..'<%/person>', self:secondperson(c,from));
			end
			b=string.gmatch(reply,'<person>([^<]+)<%/person>')
			c,d=b()
		end
	end

--this code is responsible for infinite looping and requires rewriting
	local b=string.gmatch(reply,'<set name=%"([^<]+)%">([^<]+)<%/set>')
	local c,d=b()
	local e;
	while(string.find(reply,"<set name")~=nil and c~=nil) do
		if(c~=nil) then
			e=tm(d);
			reply=reply:gsub('<set name=%"'..c..'%">'..d..'<%/set>', d);
			ai_set[from][c]=e
		end
		b=string.gmatch(reply,'<set name=%"([^<]+)%">([^<]+)<%/set>')
		c,d=b()
	end

	--think of something. anything at all
	reply=reply:gsub("<think>.*<%/think>","");

	if(string.find(reply,"<sr%/>")~=nil) then
		reply=reply:gsub("<sr%/>",getresponse(stars[1],from))
	end

	if(string.find(reply,"<srai>")~=nil) then
		local b=string.gmatch(reply,'<srai>([^<]+)<%/srai>')
		local c=b()
		while(string.find(reply,"<srai>")~=nil and c~=nil) do
			if(c~=nil) then
				reply=reply:gsub('<srai>'..c..'<%/srai>', getresponse(c,from));
			end
			b=string.gmatch(reply,'<srai>([^<]+)<%/srai>')
			c,d=b()
		end
	end

	return reply;
end

local function sendWhisper(target, msg)
   if msg == "" or msg == nil then return false end --dont send null message to anybody
   if type(target) == "number" then
      if not BNIsSelf(target)then--dont send any message to self
         BNSendWhisper(target, msg .. "     ");--add five white space to identify this addon
         return true
      end
   elseif type(target) == "string" then
	  --the GetRealmName() will get realm name with white space like 'Bleeding Hollow'
	  --but target's realm name without white space like 'BleedingHollow'
	  --so we need remove white space
	  local nameWithRealm = UnitName("player") .. "-" .. string.gsub(GetRealmName(), "%s", "");
	  --self message will make message loop
	  --if we want send message to ourselves
	  --it will cancel SendChatMessage but leave a printMessage.
      if (target==nameWithRealm) then
         print("\124cff8888ff[AutoReplyRobot]\124r:SelfMessage：" .. msg);--dont send any message to self
         return false;
      end
      SendChatMessage(msg .. "     ", "WHISPER","COMMON", target);
      return true
   end
end


function Calc(ex)
	local func, errorMessage = loadstring('return ' .. ex, ex);

	if (not func) then
		return nil;
	end

	local result, message = pcall(func);

	if (not result) then
		return nil;
	else
		return ex .. " = " .. message;
	end
end

function parseEquation(msg)
	local trm = string.gsub(string.lower(msg), "%s", "")--remove whitespace
	local parse = trm:match("^calc(.-)$");--enUS
	if parse == nil then
		parse = trm:match("^计算(.-)$");--zhCN
	end
	if parse == nil then
		parse = trm:match("^計算(.-)$");--zhTW
	end
	if parse == nil then
		return nil;
	else
		return parse;
	end
end

function processMsg(msg,who)

	--First : parseEquation
	local parse = parseEquation(msg);
	if(parse ~= nil) then
		return Calc(parse);
	end

	--Second : response pure symbol
	if pure_symbol[msg] ~= nil and pure_symbol[msg] ~= "" then
		return pure_symbol[msg];
	end

	--Third : response with AIML engine
	if(type(ai_set[who])~="table") then
		ai_set[who]={}
		ai_set[who]["name"]=who;
	end

		local lcl = GetLocale();
		--local lcl = "zhTW";--fake to debug

		local msgIn=preparemsg(msg:lower());
		local reply = msgIn;

		if lcl == "zhTW" then--case Traditional Chinese
			reply=reply:upper();
			reply=getresponse(reply,who,ai_db_tw)
			reply=reply:lower();
		elseif lcl == "zhCN" then--case Simplified Chinese
			reply=reply:upper();
			reply=getresponse(reply,who,ai_db_cn)
			reply=reply:lower();
		else
			reply = "null" ;--default local
		end

		--when we cant find any response in local ai database,
		--just use english
		if reply == "null" then
			reply=msgIn;
			reply=reply:upper();
			reply=getresponse(reply,who,ai_db_en)
			reply=reply:lower();
		end

	return reply;
end
--functionsend

function ARR:GetSetting(info)
	return self.db.profile[info[#info]]
end

function ARR:GetProfile(info)
	return self.db.profile.bot_self[info[#info]]
end

function ARR:SetSetting(info, newValue)
	self.db.profile[info[#info]] = newValue
end

function ARR:SetProfile(info, newValue)
	self.db.profile.bot_self[info[#info]] = newValue
end

function ARR:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("ARRDB", defaults, "Default")
    LibStub("AceConfig-3.0"):RegisterOptionsTable("ARR", options)
    self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ARR", "ARR")
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ARR-Profile", options2)
    self.optionsFrame2 = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ARR-Profile",  "Details","ARR")
    self:RegisterChatCommand("arr", "ChatCommand")
	self:RegisterEvent("VARIABLES_LOADED");
end

function ARR:VARIABLES_LOADED()
	DEFAULT_CHAT_FRAME:AddMessage("\124cff8888ff[AutoReplyRobot]\124r: AddOn Load Complete", 1, 1, 0);
end

function ARR:ChatCommand(input)
    if not input or input:trim() == "" then
		self.db.profile.enabled = not self.db.profile.enabled;
		if (self.db.profile.enabled) then
			print("\124cff8888ff[AutoReplyRobot]\124r: AI Enabled");
		else
			print("\124cff8888ff[AutoReplyRobot]\124r: AI Disabled");
		end
    elseif(input~=nil and input:trim() == "show") then
		InterfaceOptionsFrame_OpenToFrame(self.optionsFrame)
    end
end


function ARR:OnEnable()
    -- Called when the addon is enabled
	self:RegisterEvent("CHAT_MSG_WHISPER");
	self:RegisterEvent("CHAT_MSG_BN_WHISPER");
	self:RegisterEvent("CHAT_MSG_CHANNEL");
end

function ARR:OnDisable()
    -- Called when the addon is disabled
end


function ARR:CHAT_MSG_WHISPER(msgtype, msg, sender,  ...)
	if (self.db.profile.sound) then
		PlaySoundFile("Interface\\AddOns\\AutoReplyRobot\\Audios\\whisper.ogg", "Master")
	end
	if(string.match(msg,"%s%s%s%s%s$") ~= nil) then
		print("\124cff8888ff[AutoReplyRobot]\124r:MessageFromOtherRobot：Ignore ");
		return false;
	end
	if(self.db.profile.enabled and (arg4~="GM" or self.db.profile.gm)) then
		local ret = processMsg(msg,sender);
		if ret == "" or ret == nil then return false end
		if(self.db.profile.tag) then
			ret=self.db.profile.prefix..": "..ret;
		end
		sendWhisper(sender,ret)
	end
end

function ARR:CHAT_MSG_BN_WHISPER(msgtype, msg, sender, ...)
	if (self.db.profile.sound) then
		PlaySoundFile("Interface\\AddOns\\AutoReplyRobot\\Audios\\whisperbn.ogg", "Master")
	end
	if(string.match(msg,"%s%s%s%s%s$") ~= nil) then
		print("\124cff8888ff[AutoReplyRobot]\124r:MessageFromOtherRobot：Ignore ");
		return false;
	end
	local presenceId = select(11, ...)
	if(self.db.profile.enabled and (arg4~="GM" or self.db.profile.gm)) then
		local ret = processMsg(msg,"LOL");
		if ret == "" or ret == nil then return false end
		if(self.db.profile.tag) then
			ret=self.db.profile.prefix..": "..ret;
		end
		sendWhisper(presenceId,ret)
	end
end


function ARR:CHAT_MSG_CHANNEL(msgtype, msg, sender, ...)
	if(string.match(msg,"%s%s%s%s%s$") ~= nil) then
		print("\124cff8888ff[AutoReplyRobot]\124r:MessageFromOtherRobot：Ignore ");
		return false;
	end
	local parse = parseEquation(msg);
	if(parse ~= nil) then
		local result = Calc(parse);
		if(result ~= nil) then
			sendWhisper(sender,result)
		end
	end
end



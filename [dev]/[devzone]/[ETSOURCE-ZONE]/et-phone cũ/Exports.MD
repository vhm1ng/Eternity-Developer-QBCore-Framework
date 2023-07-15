et-phone exports

# Crypto (Server side)

```

exports['et-phone']:RemoveCrypto(src, type, amount)

exports['et-phone']:hasEnough(src, type, amount)

exports['et-phone']:AddCrypto(src, type, amount)

```

# Employment (Server side)

```

exports['et-phone']:hireUser(Job, CID, grade)

exports['et-phone']:fireUser(Job, CID)

```

# Groups (Server Side)
```

exports['et-phone']:NotifyGroup(group, msg, type)

exports['et-phone']:pNotifyGroup(group, header, msg, icon, colour, length)

exports['et-phone']:CreateBlipForGroup(groupID, name, data)

exports['et-phone']:RemoveBlipForGroup(groupID, name)

exports['et-phone']:GetGroupByMembers(src)

exports['et-phone']:getGroupMembers(groupID)

exports['et-phone']:getGroupSize(groupID)

exports['et-phone']:GetGroupLeader(groupID)

exports['et-phone']:DestroyGroup(groupID)

exports['et-phone']:isGroupLeader(src, groupID)

--------------------------------------------------

exports['et-phone']:setJobStatus(groupID, status, stages)

exports['et-phone']:getJobStatus(groupID)

exports['et-phone']:resetJobStatus(groupID)

--------------------------------------------------

exports['et-phone']:isGroupTemp(groupID)

exports['et-phone']:CreateGroup(src, name, password)

```

# Notifications (Client side)

```

exports['et-phone']:PhoneNotification(title, text, icon, color, timeout, accept, deny)

```

# Twitter (Server side)

```

local function escape_str(s)
	return s
end

local TweetData = {
    firstName = PhoneData.PlayerData.charinfo.firstname,
    lastName = PhoneData.PlayerData.charinfo.lastname,
    citizenid = PhoneData.PlayerData.citizenid,
    message = escape_str(data.Message):gsub("[%<>\"()\'$]",""),
    time = data.Date,
    tweetId = "TWEET-"..math.random(11111111, 99999999),
    type = data.type,
    url = URL
}

exports['et-phone']:AddNewTweet(TweetData)

```

ai_db_cn={
["我是.*"]={
	["template"]="NO,我认为你是<get name=\"name\"/>",
},
["我喜欢.*"]={
	["template"]="这么巧我也喜欢<star/>.",
},
["我叫.*"]={
	["template"]="原來你叫<think><set name=\"name\"><star/></set></think><get name=\"name\"/>啊？",
},
["你好"]={
	["template"]="大家好才是真的好！",
},
[".*"]={
	["template"]="null",
},
}


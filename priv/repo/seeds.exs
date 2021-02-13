live_view =
  %{
    image_path:
      "data:image/png;base64,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",
    nome: "LiveView",
    lectures: [
      %{
        description: "lorem ipsum",
        duration: 20,
        name: "How to use Ecto",
        video_url: "https://youtu.be/QXvKydLhzEM"
      },
      %{
        description: "lorem ipsum",
        duration: 20,
        name: "How to use Ecto",
        video_url: "https://youtu.be/QXvKydLhzEM"
      },
      %{
        description: "lorem ipsum",
        duration: 20,
        name: "How to use Ecto",
        video_url: "https://youtu.be/QXvKydLhzEM"
      }
    ]
  }
  |> KeyLearning.School.create_course()

ecto =
  %{
    image_path:
      "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALAAAAEfCAMAAADWVLzjAAAAflBMVEX///93v0N1vkByvTpxvTlvvDVzvT33+/T9/vz6/ff7/fnR6MVsuy/s9uWSy2rv9+n0+u/k8tuFxVil04eUy3Gx2Zbd79G+36h9wkmRy2ji8dit15LY7Mubz3ih0n/D4q+BxFGJx2C33J/R6cGk04XL5rms1pO43KPS6cKe0Hx6ExjsAAAKAklEQVR4nO2da3uivBaGSwJBLQjiCQ8oWB3t//+DG6eOBUog6wlI32vn/jgf5Jk0WVmnJG9vBoPBYDAYDAaDwWAwGAwGg8FgMBgMBoPBYDAYDIb/J0Zj138/nna7ZHHnczdfri9733Uno6Gl1eDfroeIe45tcy6+4JzbjuN58eZ8vazCoRV+Mwrez1EsbMGsWhgTNrfSbHcJ3KG15oTHc+wIJhFblM0dsVnehtUc3ha2dGTrVOezZHEJhpLrnjJHKIv9h3DSz9sQcmefnq0+tqVxFo5Yzl4s1z/HHFL70GzHh9Ur5c49jo1ucZg3r5IcXmP61K1BsOnqFXvKKgLnbo1kPvf7lhscOpP7VzI79WuZ95HOWquB2dm2P7nu2elyeL8Q3m7ck97Zwu5c7h1n0c9M3gP7mhpCfPSgd93u4cAwvuzawE3mPUzfAnbS7UQeLzq2Dj8VT7ucyGHvei2LR91FJX7Wv9586UVduXDuS/TmY5x149u/ZnzviKiLeTx+md58jKf6noWbvE5vbisW2vb40M92LFW809S7fK3efB4ftfQenRfrtZij425u417341qExsILevR35NgHVO/k85UG4htnDwpevnwCf8FAr2I1kF7UtoVZXwFGOwxxg86vtsAFxGJC1rsaUG++7sgJzjAdwqI9YRk1YhrKQvyDGkdvh5V7N20kt22UDGchHjikIf7whtZLMxRhNuiKeygmbNDrYXyIMiJR1jvuN8mjiqccQ68HNmkPbNXYIxh2z3ii7MmfBt2UC3A1F2isW9HqDHupJPj4WwbYYqmKXncz+Cb3RKiUHm+/w0T8xb4qCJ7+ngHO9452J3P1W1bcX0R7NHrtaFdmX2j+ivPepnfcQarn3i3jxJtpTuw4XEc1n7cJ1l9yzI43y1sYumPXdcPgfbmJ8eo027QJPmguOebE12oyb7uOUW+KpS0peV/TjbCzY53bPT6iNXXW4hR/aC055i1lHmG49KChsC/NgrVCOR41bUwzqFTStup03Ii2wmCQAL/Ossbg+UPDRjjz1l0JSX6xxlB0h09hlSB3tKMPSGOcFG5gGyE2StEBvWTdmGTD0z2t9vJBQM4fNAZ2F3gKc9U0zZ76Cd4UdSxQo2a3bvlPTsRJIT4bfgwdYNUJcSewaJNCLOS/NUMTasoJhDtX2rCwhtWMTmFmUZLPxKwHa+hI+ANaYXtN0Es19g3TbQyuORbR+kiIxZNYWnpGM1T2iaT37Y0WgjCpR+WDno9DbdT5JP0l5YLB6EhMiXqJqSV5HAq2cvDWwLbKjDQycsHYmmsyOzLBpA/IBUfQmhP05oaA9CWp4BFxz/z3ey1BV51gkssmFewjcvPfo7c2dDTCWFKNbeh9Zh0JxiJ8DrRidDQlLphgoBd8RsrfSQVfITMcA8dzZjHlC1LBS2SEoXaiFcnvtiXJqtEZ2TdYRtdL3JplvgQmuDHikkHKhzGZe+lCtQ2ya3mHtENJt34XSqIA+xzRgWeZZJWAggEjQQuRpFGzO0UEq3cIPAlpVRRpvpX4O1+wmG7VDjTzKY1wXyV4RfyEtNMVE5xRe5PJ/XuO7AuYYGozNfmIEItkaWdMsFpW+Ml4SnVY5DUOyKyJM8kb9sl6G7xBTPCcInib0v0red6nd8HhHKjUNThXUCMKQfAtQ/zthoAG8taUBa+mWLXZk2/9o3lvgkezxEITow1WCIk4VASP91P4eHFjRQaJ6VoFT2a7VOD168auqiMywi1NRB8J17l6oLlvDQnzG3e6yS229dpFmmsRe+DHm3wJP9G+5CNuTIwiuTWWytzLyVX/IH9LVmkCZC+l/nDYxUFSr6W5FckPS0IkrPukgmjrqEIy8F6tbzLr5NIXeTXmAVLjqA3zg6gLvSJp25SQ/pm6luRJJ3olf7zSHxIQXJeq6uZgMW8/FIE02dX4q++d9B+zuL3/3QVWHUurZmLUzTlHpUOWUDW/upSxRH4VlqpEt8gp8Wqr4aSbBm+1SsQW6Eipeqx+JzOYN/TNFAEEV1sNOzm08nNlSED+nJVUUiczwlHtIUKafsoHC32sYF2GK9chtsDwlH3AFamiVY9Qv9oF6b1km2KUhEQBVSj3S8zpRrRc5dHp533AKT1ayPdKK0RfsKPeFZkzAb5Xcie0BYsp7cQ45MQXwqSbphluiTt/8gF8sFhcpFYwqnot6jUNiIspFt9/Rc1LYIA6Ja0J7gv722MbaZ3gJhmIB8iq4YXGKqjE/sBROwJaBjrtxb+X3Tt+qL/9ZFct1JbvO4UcmAsfZrLP2KWBSHNVMWOF+pf4JYdIraOw2wWYnXDO9FtcHlwQN75w3QZ0V4lzwC+RhOpfBYPkAmEzZB+erJEjTvF34EG+gIk5gP0t4CKBejGPQDz4ICygD6cEkmsqZWpI01go5HhagLr3S5G5+jE05iUd3CcK2dKS43JSrG8I69rFrbgusr+Wj3McVUoczGk8RUoAOu/OS8cNZu3FcB4jbXq1hFB6wSutdnfJG//bwp52+DwAst1ZrFKVCM5MVgdlwkk6vWcfS0KKSvF95O9S8XP5McHjwwr2HerBgjP+o5Di3naR53DxuL0h12p76edHD7eSzyE30alJnI+Dyy6ZZlkUZdlmsTvO3F4eMADdRGlY5rqB74Z9vrXwjnniyqnS7sHu+Waat9u+vfnrPyfoalHMGOfmWEvxduHZ94WJSL6BETDT2MCuj3YmESOKd+gZxvaLEOqZLJ7dYox8EPINKzX+xV5A96O7xfscoPtbfcIjTSV4RD7HmHMoutFsgzjKe+yQ3d1Y7Mj3NO9LawY4CnnnBKeenClx2UzKiUhQsMalHsI7kPzHyt2V0gMcLUzoTcpPcg+d8NGKYPhCeOzMz2OUbG+uXMQalW5xYhYcnIapTvHNjhcXRZ+nmKplQuOFtZlWE08eXNjJ8eeThZPwxz89HzFi3ELM4pNAa4yte/xmpZv5eu/7QY7v7y+7aZqm0aky9OvYvjv5dnzQfJhjBrTbVweacfv+QmSO5zmPGMSptvPO1lmaTk/6b1EFXd1YXrnkzkOvqG8lhHruW0FOGSsyPvdxvSRwsl+Z0bLTd96+0MwMt/DR+dteyHk8CtuOn8NhXDeV3Ub42eXdz7qlAiU+dPeQbzgUaJLxp9hthVWYl/T+HuSDW6pvkpmTvWR4v/B3XHNecEZxlDtgdtaxcMLZvWo2PBltFwyUzFm3qWxlVgnw3u09BHnh5K3gzyOaWRZ29PrJUCK4ZJ7iAancLfc2wz2GXdB8SiynLUGUh0nxYj3s4H4zmV0WFue8XvX9SXduJRe/r+dhQbaXP0nKPcfm4lGAEeIeE/EoWV5e/Vy3IuMw2F5OuyTJopwsSXanyzYIf9nIGgwGg8FgMBgMBoPBYDAYDAaDwWAwGAwGg8FgMBgM/2H+B7wurkf/8An3AAAAAElFTkSuQmCC",
    nome: "Ecto Classes",
    lectures: [
      %{
        description: "lorem ipsum",
        duration: 20,
        name: "How to use Ecto",
        video_url: "https://youtu.be/QXvKydLhzEM"
      },
      %{
        description: "lorem ipsum",
        duration: 20,
        name: "How to use Ecto",
        video_url: "https://youtu.be/QXvKydLhzEM"
      },
      %{
        description: "lorem ipsum",
        duration: 20,
        name: "How to use Ecto",
        video_url: "https://youtu.be/QXvKydLhzEM"
      },
    ]
  }
  |> KeyLearning.School.create_course()

phoenix_api =
  %{
    image_path:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJ_vopfFWAjzLRAoV12qb8WZaGGer5GGxJeA&usqp=CAU",
    nome: "Phoenix Framework to Apis",
    lectures: [
      %{
        description: "lorem ipsum",
        duration: 20,
        name: "How to use Ecto",
        video_url: "https://youtu.be/QXvKydLhzEM"
      },
      %{
        description: "lorem ipsum",
        duration: 20,
        name: "How to use Ecto",
        video_url: "https://youtu.be/QXvKydLhzEM"
      }
    ]
  }
  |> KeyLearning.School.create_course()

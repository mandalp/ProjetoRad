{"filter":false,"title":"cliente.rb","tooltip":"/app/models/cliente.rb","undoManager":{"mark":30,"position":30,"stack":[[{"group":"doc","deltas":[{"start":{"row":3,"column":31},"end":{"row":4,"column":0},"action":"insert","lines":["",""]},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":4,"column":2},"end":{"row":5,"column":0},"action":"insert","lines":["",""]},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":2},"end":{"row":7,"column":48},"action":"insert","lines":["extend FriendlyId","    scope :active, -> {where(:active => true)}","    friendly_id :nome, use: [:slugged, :finders]"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":2},"end":{"row":6,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":2},"end":{"row":7,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":2},"end":{"row":5,"column":3},"action":"insert","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":2},"end":{"row":6,"column":3},"action":"insert","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":2},"end":{"row":7,"column":3},"action":"insert","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":25},"end":{"row":14,"column":0},"action":"insert","lines":["",""]},{"start":{"row":14,"column":0},"end":{"row":14,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":14,"column":2},"end":{"row":15,"column":0},"action":"insert","lines":["",""]},{"start":{"row":15,"column":0},"end":{"row":15,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":15,"column":2},"end":{"row":19,"column":7},"action":"insert","lines":["def self.search(search, page)","      paginate :per_page => 5, :page => page,","               :conditions => ['nome like ?', \"%#{search}%\"],","               :order => 'nome'","    end"]}]}],[{"group":"doc","deltas":[{"start":{"row":19,"column":2},"end":{"row":19,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":31},"end":{"row":4,"column":0},"action":"insert","lines":["",""]},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":4,"column":2},"end":{"row":6,"column":48},"action":"insert","lines":["extend FriendlyId","    scope :active, -> {where(:active => true)}","    friendly_id :nome, use: [:slugged, :finders]"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":2},"end":{"row":5,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":2},"end":{"row":6,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":8,"column":2},"end":{"row":10,"column":47},"action":"remove","lines":["#extend FriendlyId","  #scope :active, -> {where(:active => true)}","  #friendly_id :nome, use: [:slugged, :finders]"]}]}],[{"group":"doc","deltas":[{"start":{"row":8,"column":0},"end":{"row":8,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":2},"end":{"row":8,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":4,"column":2},"end":{"row":6,"column":46},"action":"remove","lines":["extend FriendlyId","  scope :active, -> {where(:active => true)}","  friendly_id :nome, use: [:slugged, :finders]"]}]}],[{"group":"doc","deltas":[{"start":{"row":4,"column":2},"end":{"row":6,"column":3},"action":"insert","lines":["extend FriendlyId","  friendly_id :name, use: :slugged","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":0},"end":{"row":6,"column":1},"action":"insert","lines":["'"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":0},"end":{"row":6,"column":1},"action":"remove","lines":["'"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":0},"end":{"row":7,"column":2},"action":"remove","lines":["  end","  "]}]}],[{"group":"doc","deltas":[{"start":{"row":14,"column":2},"end":{"row":18,"column":5},"action":"remove","lines":["def self.search(search, page)","      paginate :per_page => 5, :page => page,","               :conditions => ['nome like ?', \"%#{search}%\"],","               :order => 'nome'","  end"]}]}],[{"group":"doc","deltas":[{"start":{"row":14,"column":0},"end":{"row":14,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":2},"end":{"row":14,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":4,"column":2},"end":{"row":5,"column":0},"action":"insert","lines":["",""]},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":16},"end":{"row":6,"column":17},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":16},"end":{"row":6,"column":17},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":21},"end":{"row":6,"column":22},"action":"insert","lines":[":"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":25},"end":{"row":6,"column":26},"action":"remove","lines":[":"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":25},"end":{"row":6,"column":26},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":25},"end":{"row":6,"column":26},"action":"remove","lines":[":"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":25},"end":{"row":6,"column":26},"action":"remove","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":25},"end":{"row":6,"column":26},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":25},"end":{"row":6,"column":26},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":26},"end":{"row":6,"column":27},"action":"insert","lines":["="]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":27},"end":{"row":6,"column":28},"action":"insert","lines":[">"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":28},"end":{"row":6,"column":29},"action":"insert","lines":[" "]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":6,"column":21},"end":{"row":6,"column":21},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1422274789516,"hash":"fa6aee0640ce324f0171ff345cbe3f7119d0e2f2"}
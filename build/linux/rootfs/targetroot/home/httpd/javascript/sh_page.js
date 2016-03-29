/* Copyright (c) 2010 WorkWare Systems Pty Ltd */
if (! this.sh_languages) {
  this.sh_languages = {};
}
sh_languages['page'] = [
  [
    {
      'next': 1,
      'regex': /#/g,
      'style': 'sh_comment'
    },
    {
      'regex': /\b[+-]?(?:(?:0x[A-Fa-f0-9]+)|(?:(?:[\d]*\.)?[\d]+(?:[eE][+-]?[\d]+)?))\b/g,
      'style': 'sh_number'
    },
    {
      'next': 2,
      'regex': /"/g,
      'style': 'sh_string'
    },
    {
      'next': 3,
      'regex': /'/g,
      'style': 'sh_string'
    },
    {
      'regex': /~|!|%|\^|\*|\(|\)|-|\+|=|\[|\]|\\|:|;|,|\.|\/|\?|&|<|>|\|/g,
      'style': 'sh_symbol'
    },
    {
      'regex': /\{|\}/g,
      'style': 'sh_cbracket'
    },
    {
      /* Tcl commands */
      'regex': /\b(?:array|proc|global|upvar|if|then|else|elseif|for|foreach|break|continue|while|set|eval|case|in|switch|default|exit|error|proc|return|uplevel|loop|expr|catch|rename|variable|method|append|binary|format|regexp|regsub|scan|string|subst|concat|join|lappend|lindex|list|llength|lrange|lreplace|lsearch|lset|lsort|split|expr|incr|close|eof|file|fileevent|flush|gets|open|puts|read|seek|socket|tell|load|package|source|bgerror|history|info|unknown|cd|clock|exec|exit|glob|pid|pwd|time)\b/g,
      'style': 'sh_keyword'
    },
    {
      /* uWeb extensions commands */
      'regex': /\b(?:cgi|html|conf|db|netif|log)\b/g,
      'style': 'sh_keyword'
    },
    {
      /* page keywords */
      'regex': /\b(?:access|auth|button|callbacks|default|display|editmode|field|head|help|ignore|init|label|menus|pageformat|setmode|stdmode|storage|storagename|str|submit|summary|table|tclmapping|text|title|type|upload|verbatim)\b/g,
      'style': 'sh_function'
    },
    {
      /* editmode, stdmode keywords */
      'regex': /\b(?:none|hidden|image|readonly|default|password|text|textarea|select|enum|radio|checkbox|file|ro_checkbox|ro_password|newline|nonewline)\b/g,
      'style': 'sh_keyword'
    },
    {
      /* other keywords */
      'regex': /\b(?:contained|none|default|raw|edit|std|state|cookie|page|custom|table)\b/g,
      'style': 'sh_argument'
    },
    {
      /* types */
      'regex': /\b(?:password|boolean|text|number|blank|ipaddr|netmask|subnet|enum)\b/g,
      'style': 'sh_keyword'
    },
    {
      /* options */
      'regex': /\b-(?:tcl|c|lua|onget|nosearch|replace)\b/g,
      'style': 'sh_optionalargument'
    },
    {
      'regex': /\$[A-Za-z0-9_]+/g,
      'style': 'sh_variable'
    }
  ],
  [
    {
      'exit': true,
      'regex': /$/g
    }
  ],
  [
    {
      'exit': true,
      'regex': /"/g,
      'style': 'sh_string'
    },
    {
      'regex': /\\./g,
      'style': 'sh_specialchar'
    }
  ],
  [
    {
      'exit': true,
      'regex': /'/g,
      'style': 'sh_string'
    },
    {
      'regex': /\\./g,
      'style': 'sh_specialchar'
    }
  ]
];

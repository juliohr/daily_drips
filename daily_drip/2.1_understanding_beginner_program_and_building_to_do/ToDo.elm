-- We have a todo
type alias Todo = 
  { title     : String
  , completed : Bool
  , editing   : Bool
  }

-- We have a list of todos

-- We have the filter state for the application
type FilterState = All | Active | Completed

-- We have the entire application state's model
type alias Mode =
  { todos  : List Todo,
    todo   : Todo,
    filter : FilterState
  }

-- We have the messages that can occur
type Msg 
  = Add Todo
  | Complete Todo
  | Delete Todo
  | Filter FiltarState
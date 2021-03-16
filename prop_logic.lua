
-- require('prop_logic')

local prop_logic = {

    v = true, -- v
    f = false, -- f

    _tostring = function(value)
        if (value == true) then
            return 'v'
        elseif (value == false) then
            return 'f'
        else
            return nil
        end
    end,

    _not = function(proposition_p)
        return not(proposition_p) -- ~p
    end,

    _and = function(proposition_p, proposition_q)
        return (proposition_p) and (proposition_q) -- p ^ q
    end,

    _or = function(proposition_p, proposition_q)
        return (proposition_p) or (proposition_q) -- p v q
    end,

    _xor = function(proposition_p, proposition_q)
        local p = proposition_p
        local q = proposition_q
        return (p and (not q)) or ((not p) and q) -- (p ^ ~q) v (~p ^ q)
    end,

    _con = function(proposition_p, proposition_q)
        return (not proposition_p) or (proposition_q) -- ~p v q
    end,

    _bicon = function(proposition_p, proposition_q)
        local p = proposition_p
        local q = proposition_q
        return (p and q) or ((not p) and (not q)) -- (p ^ q) v (~p ^ ~q)
    end

}

return prop_logic

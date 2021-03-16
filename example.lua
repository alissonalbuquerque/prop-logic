
local logic = require('prop_logic')

local v = logic.v
local f = logic.f

print('--- Negacao ---')
print(logic._tostring(logic._not(v)))
print(logic._tostring(logic._not(f)))
print('---------------')

print('--- Conjuncao ---')
print(logic._tostring(logic._and(v,v)))
print(logic._tostring(logic._and(v,f)))
print(logic._tostring(logic._and(f,v)))
print(logic._tostring(logic._and(f,f)))
print('-----------------')

print('--- Disjuncao Inclusiva ---')
print(logic._tostring(logic._or(v,v)))
print(logic._tostring(logic._or(v,f)))
print(logic._tostring(logic._or(f,v)))
print(logic._tostring(logic._or(f,f)))
print('---------------------------')

print('--- Disjuncao Exclusiva ---')
print(logic._tostring(logic._xor(v,v)))
print(logic._tostring(logic._xor(v,f)))
print(logic._tostring(logic._xor(f,v)))
print(logic._tostring(logic._xor(f,f)))
print('---------------------------')

print('--- Condicional (se entao) ---')
print(logic._tostring(logic._con(v,v)))
print(logic._tostring(logic._con(v,f)))
print(logic._tostring(logic._con(f,v)))
print(logic._tostring(logic._con(f,f)))
print('------------------------------')

print('--- Bicondicional (se somente se) ---')
print(logic._tostring(logic._bicon(v,v)))
print(logic._tostring(logic._bicon(v,f)))
print(logic._tostring(logic._bicon(f,v)))
print(logic._tostring(logic._bicon(f,f)))
print('-------------------------------------')

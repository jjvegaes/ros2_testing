-- simAseba lua type-checking wrapper
-- (this file is automatically generated: do not edit)
require 'checkargs'

local simAseba=require('simAseba')

function simAseba.__addTypeCheck()
    local function wrapFunc(funcName,wrapperGenerator)
        _G['simAseba'][funcName]=wrapperGenerator(_G['simAseba'][funcName])
    end

end

sim.registerScriptFuncHook('sysCall_init','simAseba.__addTypeCheck',true)

return simAseba
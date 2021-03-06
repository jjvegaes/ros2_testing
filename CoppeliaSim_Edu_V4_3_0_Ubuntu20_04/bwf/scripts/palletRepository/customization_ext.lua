model.ext={}

function model.ext.getListOfAvailablePallets()
    local allPallets=model.getAllPalletHandles()
    local retList={}
    for i=1,#allPallets,1 do
        retList[#retList+1]={simBWF.getObjectAltName(allPallets[i]),allPallets[i]}
    end
    return retList
end

function model.ext.refreshDlg()
    if model.dlg then
        model.dlg.refresh()
    end
end
---------------------------------------------------------------
-- SERIALIZATION (e.g. for replacement of old with new models):
---------------------------------------------------------------

function model.ext.getSerializationData()
    local data={}
    data.objectName=sim.getObjectAlias(model.handle,1)
    data.objectAltName=sim.getObjectAlias(model.handle)
    data.matrix=sim.getObjectMatrix(model.handle,-1)
    local parentHandle=sim.getObjectParent(model.handle)
    if parentHandle>=0 then
        data.parentName=sim.getObjectAlias(parentHandle,1)
    end
    data.embeddedData=model.readInfo()
    
end

function model.ext.applySerializationData(data)
end

package com.eats.mapper.store;

import java.util.List;
import java.util.Map;

import com.eats.store.model.reserve.AlarmDTO;
import com.eats.store.model.reserve.BinTables;
import com.eats.store.model.reserve.ReserveListDTO;
import com.eats.store.model.reserve.StoreTimeDTO;
import com.eats.store.model.reserve.TableDTO;

public interface ReserveMapper {
	public List<TableDTO> tables(Map<String, Object> map);
	public List<ReserveListDTO> reserveList(Map<String, Object> map);
	public StoreTimeDTO storeTime(Map<String, Object> map);
	public int assignTable(Map<String, Object> map);
	public List<BinTables> selectBinTables(Map<String, Object> map);
	public List<AlarmDTO> selectAlarms(Map<String, Object> map);
}

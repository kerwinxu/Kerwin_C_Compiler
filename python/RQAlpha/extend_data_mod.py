#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2017-09-14 20:47:49
# Last Change:  2017-09-14 20:56:22
# File Name: extend_data_mod.py

# 这个文件是作为扩展数据源用，准确的说是加载FinanceDataMining中的数据

import os
import pandas as pd
from rqalpha.interface import AbstractMod


__config__ = {
    "csv_path": None
}


def load_mod():
    return ExtendAPIDemoMod()


class ExtendAPIDemoMod(AbstractMod):
    def __init__(self):
        # 注入API 一定要在初始化阶段，否则无法成功注入
        self._csv_path = None
        self._inject_api()

    def start_up(self, env, mod_config):
        self._csv_path = os.path.abspath(os.path.join(os.path.dirname(__file__), mod_config.csv_path))

    def tear_down(self, code, exception=None):
        pass

    def _inject_api(self):
        from rqalpha import export_as_api
        from rqalpha.execution_context import ExecutionContext
        from rqalpha.const import EXECUTION_PHASE

        @export_as_api
        @ExecutionContext.enforce_phase(EXECUTION_PHASE.ON_INIT,
                                        EXECUTION_PHASE.BEFORE_TRADING,
                                        EXECUTION_PHASE.ON_BAR,
                                        EXECUTION_PHASE.AFTER_TRADING,
                                        EXECUTION_PHASE.SCHEDULED)
        def get_csv_as_df():
            data = pd.read_csv(self._csv_path)
            return data

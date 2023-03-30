#
# Copyright (c) 2022 Airbyte, Inc., all rights reserved.
#


import sys

from airbyte_cdk.entrypoint import launch
from source_us_census_material_census_cube import SourceUsCensusMaterialCensusCube

if __name__ == "__main__":
    source = SourceUsCensusMaterialCensusCube()
    launch(source, sys.argv[1:])

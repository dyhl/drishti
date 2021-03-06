TEMPLATE = lib

DRISHTI_DEFINES = ITK
include(../../../../drishti.pri )

CONFIG += release plugin

TARGET = metaimageplugin

include(../plugins.pri)

win32 {
  INCLUDEPATH += ../../ \
	$$InsightToolkit\Modules\Core\Common\include \
	$$InsightToolkit\Modules\IO\ImageBase\include \
	$$InsightToolkit\Modules\IO\Meta\include \
	$$InsightToolkit\Modules\ThirdParty\MetaIO\src\MetaIO \
	$$InsightToolkit\Modules\ThirdParty\VNL\src\vxl\core \
	$$InsightToolkit\Modules\ThirdParty\VNL\src\vxl\vcl \
	$$InsightToolkit\Modules\ThirdParty\VNL\src\vxl\vcl\config.win32 \
	$$InsightToolkit\Modules\ThirdParty\ZLIB\src \
	$$ITK\Modules\Core\Common \
	$$ITK\Modules\IO\ImageBase \
	$$ITK\Modules\ThirdParty\KWSys\src \
	$$ITK\Modules\ThirdParty\VNL\src\vxl\core \
	$$ITK\Modules\ThirdParty\MetaIO\src\MetaIO \
	$$ITK\Modules\ThirdParty\ZLIB\src


  LIBS += Advapi32.lib \
	User32.lib \
	Gdi32.lib \
	itksys-$${ITKVer}.lib \
	itkvnl_algo-$${ITKVer}.lib \
	itkvnl-$${ITKVer}.lib \
	itkv3p_netlib-$${ITKVer}.lib \
	ITKCommon-$${ITKVer}.lib \
	itkNetlibSlatec-$${ITKVer}.lib \
	ITKStatistics-$${ITKVer}.lib \
	ITKIOImageBase-$${ITKVer}.lib \
	ITKIOBMP-$${ITKVer}.lib \
	ITKIOBioRad-$${ITKVer}.lib \
	ITKEXPAT-$${ITKVer}.lib \
	itkopenjpeg-$${ITKVer}.lib \
	itkzlib-$${ITKVer}.lib \
	itkgdcmDICT-$${ITKVer}.lib \
	itkgdcmMSFF-$${ITKVer}.lib \
	ITKIOGDCM-$${ITKVer}.lib \
	ITKIOGIPL-$${ITKVer}.lib \
	itkjpeg-$${ITKVer}.lib \
	ITKIOJPEG-$${ITKVer}.lib \
	itktiff-$${ITKVer}.lib \
	ITKIOTIFF-$${ITKVer}.lib \
	ITKIOLSM-$${ITKVer}.lib \
	ITKMetaIO-$${ITKVer}.lib \
	ITKIOMeta-$${ITKVer}.lib \
	ITKznz-$${ITKVer}.lib \
	ITKniftiio-$${ITKVer}.lib \
	ITKIONIFTI-$${ITKVer}.lib \
	ITKNrrdIO-$${ITKVer}.lib \
	ITKIONRRD-$${ITKVer}.lib \
	itkpng-$${ITKVer}.lib \
	ITKIOPNG-$${ITKVer}.lib \
	ITKIOStimulate-$${ITKVer}.lib \
	ITKIOVTK-$${ITKVer}.lib \
	ITKMesh-$${ITKVer}.lib \
	ITKSpatialObjects-$${ITKVer}.lib \
	ITKPath-$${ITKVer}.lib \
	ITKLabelMap-$${ITKVer}.lib \
	ITKQuadEdgeMesh-$${ITKVer}.lib \
	ITKOptimizers-$${ITKVer}.lib \
	ITKPolynomials-$${ITKVer}.lib \
	ITKBiasCorrection-$${ITKVer}.lib \
	ITKBioCell-$${ITKVer}.lib \
	ITKDICOMParser-$${ITKVer}.lib \
	ITKIOXML-$${ITKVer}.lib \
	ITKIOSpatialObjects-$${ITKVer}.lib \
	ITKFEM-$${ITKVer}.lib \
	ITKIOIPL-$${ITKVer}.lib \
	ITKIOGE-$${ITKVer}.lib \
	ITKIOSiemens-$${ITKVer}.lib \
	ITKKLMRegionGrowing-$${ITKVer}.lib \
	ITKVTK-$${ITKVer}.lib \
	ITKWatersheds-$${ITKVer}.lib \
	ITKgiftiio-$${ITKVer}.lib \
	ITKIOMesh-$${ITKVer}.lib \
	itkhdf5_cpp-$${ITKVer}.lib \
	itkhdf5-$${ITKVer}.lib \
	ITKIOCSV-$${ITKVer}.lib \
	ITKIOHDF5-$${ITKVer}.lib \
	ITKIOTransformBase-$${ITKVer}.lib \
	ITKIOTransformHDF5-$${ITKVer}.lib \
	ITKIOTransformInsightLegacy-$${ITKVer}.lib \
	ITKIOTransformMatlab-$${ITKVer}.lib \
	ITKOptimizersv4-$${ITKVer}.lib \
	ITKReview-$${ITKVer}.lib \
	ITKVideoCore-$${ITKVer}.lib \
	ITKVideoIO-$${ITKVer}.lib \
	itkgdcmIOD-$${ITKVer}.lib \
	itkgdcmDSED-$${ITKVer}.lib \
	itkgdcmCommon-$${ITKVer}.lib \
	itkgdcmjpeg8-$${ITKVer}.lib \
	itkgdcmjpeg12-$${ITKVer}.lib \
	itkgdcmjpeg16-$${ITKVer}.lib \
	ITKVNLInstantiation-$${ITKVer}.lib \
#	itkv3p_lsqr-$${ITKVer}.lib \
	itkvcl-$${ITKVer}.lib
}

unix {
 !macx {

INCLUDEPATH += ../../ \
	/usr/local/include \
	$$InsightToolkit/Modules/Core/Common/include \
	$$InsightToolkit/Modules/IO/GDCM/include \
	$$InsightToolkit/Modules/IO/ImageBase/include \
	$$InsightToolkit/Modules/IO/Meta/include \
	$$InsightToolkit/Modules/ThirdParty/GDCM/src/gdcm/Source/Common \
	$$InsightToolkit/Modules/ThirdParty/GDCM/src/gdcm/Source/DataDictionary \
	$$InsightToolkit/Modules/ThirdParty/GDCM/src/gdcm/Source/DataStructureAndEncodingDefinition \
	$$InsightToolkit/Modules/ThirdParty/GDCM/src/gdcm/Source/MediaStorageAndFileFormat \
	$$InsightToolkit/Modules/ThirdParty/GDCM/src/gdcm/Source/InformationObjectDefinition \
	$$InsightToolkit/Modules/ThirdParty/MetaIO/src/MetaIO \
	$$InsightToolkit/Modules/ThirdParty/VNL/src/vxl/core \
	$$InsightToolkit/Modules/ThirdParty/VNL/src/vxl/vcl \
	$$InsightToolkit/Modules/ThirdParty/ZLIB/src \
	$$InsightToolkit/Modules/Segmentation/RegionGrowing/include \
	$$InsightToolkit/Modules/Segmentation/ConnectedComponents/include \
	$$InsightToolkit/Modules/Segmentation/LabelVoting/include \
	$$InsightToolkit/Modules/Segmentation/Watersheds/include \
	$$InsightToolkit/Modules/Core/ImageFunction/include \
	$$InsightToolkit/Modules/Filtering/Thresholding/include \
	$$InsightToolkit/Modules/Filtering/ImageIntensity/include \
	$$InsightToolkit/Modules/Filtering/ImageGradient/include \
	$$InsightToolkit/Modules/Filtering/ImageGrid/include \
	$$InsightToolkit/Modules/Filtering/ImageFilterBase/include \
	$$InsightToolkit/Modules/Filtering/MathematicalMorphology/include \
	$$InsightToolkit/Modules/Nonunit/Review/include \
	$$ITK/Modules/Core/Common \
	$$ITK/Modules/IO/ImageBase \
	$$ITK/Modules/ThirdParty/GDCM \
	$$ITK/Modules/ThirdParty/GDCM/src/gdcm/Source/Common \
	$$ITK/Modules/ThirdParty/KWSys/src \
	$$ITK/Modules/ThirdParty/VNL/src/vxl/core \
	$$ITK/Modules/ThirdParty/VNL/src/vxl/vcl \
	$$ITK/Modules/ThirdParty/MetaIO/src/MetaIO \
	$$ITK/Modules/ThirdParty/ZLIB/src

  LIBS += -lm -lstdc++ \
        -litksys-$$ITKVer \        
	-litkzlib-$$ITKVer \
	-litkvnl_algo-$$ITKVer \
	-litkvnl-$$ITKVer \
	-litkvcl-$$ITKVer \
	-litkv3p_netlib-$$ITKVer \
#	-litkv3p_lsqr-$$ITKVer \
	-litktiff-$$ITKVer \
	-litksys-$$ITKVer \
	-litkpng-$$ITKVer \
	-litkopenjpeg-$$ITKVer \
	-litkjpeg-$$ITKVer \
	-litkhdf5_cpp-$$ITKVer \
	-litkhdf5-$$ITKVer \
	-litkgdcmuuid-$$ITKVer \
	-litkgdcmjpeg8-$$ITKVer \
	-litkgdcmjpeg16-$$ITKVer \
	-litkgdcmjpeg12-$$ITKVer \
	-litkgdcmMSFF-$$ITKVer \
	-litkgdcmIOD-$$ITKVer \
	-litkgdcmDSED-$$ITKVer \
	-litkgdcmDICT-$$ITKVer \
	-litkgdcmCommon-$$ITKVer \
	-litkNetlibSlatec-$$ITKVer \
	-lITKznz-$$ITKVer \
	-lITKniftiio-$$ITKVer \
	-lITKgiftiio-$$ITKVer \
	-lITKWatersheds-$$ITKVer \
	-lITKVideoIO-$$ITKVer \
	-lITKVideoCore-$$ITKVer \
	-lITKVTK-$$ITKVer \
	-lITKVNLInstantiation-$$ITKVer \
	-lITKStatistics-$$ITKVer \
	-lITKSpatialObjects-$$ITKVer \
	-lITKReview-$$ITKVer \
	-lITKQuadEdgeMesh-$$ITKVer \
	-lITKPolynomials-$$ITKVer \
	-lITKPath-$$ITKVer \
	-lITKOptimizersv4-$$ITKVer \
	-lITKOptimizers-$$ITKVer \
	-lITKNrrdIO-$$ITKVer \
	-lITKMetaIO-$$ITKVer \
	-lITKMesh-$$ITKVer \
	-lITKLabelMap-$$ITKVer \
	-lITKKLMRegionGrowing-$$ITKVer \
	-lITKIOXML-$$ITKVer \
	-lITKIOVTK-$$ITKVer \
	-lITKIOTransformMatlab-$$ITKVer \
	-lITKIOTransformInsightLegacy-$$ITKVer \
	-lITKIOTransformHDF5-$$ITKVer \
	-lITKIOTransformBase-$$ITKVer \
	-lITKIOTIFF-$$ITKVer \
	-lITKIOStimulate-$$ITKVer \
	-lITKIOSpatialObjects-$$ITKVer \
	-lITKIOSiemens-$$ITKVer \
	-lITKIOPNG-$$ITKVer \
	-lITKIONRRD-$$ITKVer \
	-lITKIONIFTI-$$ITKVer \
	-lITKIOMeta-$$ITKVer \
	-lITKIOMesh-$$ITKVer \
	-lITKIOLSM-$$ITKVer \
	-lITKIOJPEG-$$ITKVer \
	-lITKIOImageBase-$$ITKVer \
	-lITKIOIPL-$$ITKVer \
	-lITKIOHDF5-$$ITKVer \
	-lITKIOGIPL-$$ITKVer \
	-lITKIOGE-$$ITKVer \
	-lITKIOGDCM-$$ITKVer \
	-lITKIOCSV-$$ITKVer \
	-lITKIOBioRad-$$ITKVer \
	-lITKIOBMP-$$ITKVer \
	-lITKFEM-$$ITKVer \
	-lITKEXPAT-$$ITKVer \
	-lITKDICOMParser-$$ITKVer \
	-lITKCommon-$$ITKVer \
	-lITKBioCell-$$ITKVer \
	-lITKBiasCorrection-$$ITKVer

 }
}

macx {
  INCLUDEPATH += ../../ \
	$$InsightToolkit/Modules/Core/Common/include \
	$$InsightToolkit/Modules/IO/ImageBase/include \
	$$InsightToolkit/Modules/IO/Meta/include \
	$$InsightToolkit/Modules/ThirdParty/MetaIO/src/MetaIO \
	$$InsightToolkit/Modules/ThirdParty/VNL/src/vxl/core \
	$$InsightToolkit/Modules/ThirdParty/VNL/src/vxl/vcl \
	$$InsightToolkit/Modules/ThirdParty/ZLIB/src \
	$$ITK/Modules/Core/Common \
	$$ITK/Modules/IO/ImageBase \
	$$ITK/Modules/ThirdParty/KWSys/src \
	$$ITK/Modules/ThirdParty/VNL/src/vxl/core \
	$$ITK/Modules/ThirdParty/VNL/src/vxl/vcl \
	$$ITK/Modules/ThirdParty/MetaIO/src/MetaIO \
	$$ITK/Modules/ThirdParty/ZLIB/src



  LIBS += -lm \
        -litksys-$$ITKVer \        
	-litkzlib-$$ITKVer \
	-litkvnl_algo-$$ITKVer \
	-litkvnl-$$ITKVer \
	-litkvcl-$$ITKVer \
	-litkv3p_netlib-$$ITKVer \
	-litkv3p_netlib-$$ITKVer \
	-litkv3p_lsqr-$$ITKVer \
	-litktiff-$$ITKVer \
	-litksys-$$ITKVer \
	-litkpng-$$ITKVer \
	-litkopenjpeg-$$ITKVer \
	-litkjpeg-$$ITKVer \
	-litkhdf5_cpp-$$ITKVer \
	-litkhdf5-$$ITKVer \
	-litkgdcmuuid-$$ITKVer \
	-litkgdcmjpeg8-$$ITKVer \
	-litkgdcmjpeg16-$$ITKVer \
	-litkgdcmjpeg12-$$ITKVer \
	-litkgdcmMSFF-$$ITKVer \
	-litkgdcmIOD-$$ITKVer \
	-litkgdcmDSED-$$ITKVer \
	-litkgdcmDICT-$$ITKVer \
	-litkgdcmCommon-$$ITKVer \
	-litkNetlibSlatec-$$ITKVer \
	-lITKznz-$$ITKVer \
	-lITKniftiio-$$ITKVer \
	-lITKgiftiio-$$ITKVer \
	-lITKWatersheds-$$ITKVer \
	-lITKVideoIO-$$ITKVer \
	-lITKVideoCore-$$ITKVer \
	-lITKVTK-$$ITKVer \
	-lITKVNLInstantiation-$$ITKVer \
	-lITKStatistics-$$ITKVer \
	-lITKSpatialObjects-$$ITKVer \
	-lITKReview-$$ITKVer \
	-lITKQuadEdgeMesh-$$ITKVer \
	-lITKPolynomials-$$ITKVer \
	-lITKPath-$$ITKVer \
	-lITKOptimizersv4-$$ITKVer \
	-lITKOptimizers-$$ITKVer \
	-lITKNrrdIO-$$ITKVer \
	-lITKMetaIO-$$ITKVer \
	-lITKMesh-$$ITKVer \
	-lITKLabelMap-$$ITKVer \
	-lITKKLMRegionGrowing-$$ITKVer \
	-lITKIOXML-$$ITKVer \
	-lITKIOVTK-$$ITKVer \
	-lITKIOTransformMatlab-$$ITKVer \
	-lITKIOTransformInsightLegacy-$$ITKVer \
	-lITKIOTransformHDF5-$$ITKVer \
	-lITKIOTransformBase-$$ITKVer \
	-lITKIOTIFF-$$ITKVer \
	-lITKIOStimulate-$$ITKVer \
	-lITKIOSpatialObjects-$$ITKVer \
	-lITKIOSiemens-$$ITKVer \
	-lITKIOPNG-$$ITKVer \
	-lITKIONRRD-$$ITKVer \
	-lITKIONIFTI-$$ITKVer \
	-lITKIOMeta-$$ITKVer \
	-lITKIOMesh-$$ITKVer \
	-lITKIOLSM-$$ITKVer \
	-lITKIOJPEG-$$ITKVer \
	-lITKIOImageBase-$$ITKVer \
	-lITKIOIPL-$$ITKVer \
	-lITKIOHDF5-$$ITKVer \
	-lITKIOGIPL-$$ITKVer \
	-lITKIOGE-$$ITKVer \
	-lITKIOGDCM-$$ITKVer \
	-lITKIOCSV-$$ITKVer \
	-lITKIOBioRad-$$ITKVer \
	-lITKIOBMP-$$ITKVer \
	-lITKFEM-$$ITKVer \
	-lITKEXPAT-$$ITKVer \
	-lITKDICOMParser-$$ITKVer \
	-lITKCommon-$$ITKVer \
	-lITKBioCell-$$ITKVer \
	-lITKBiasCorrection-$$ITKVer
}




# Input
HEADERS = metaimageplugin.h
SOURCES = metaimageplugin.cpp

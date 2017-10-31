$header

/*
enum QOpenGLTexture::Target
*/
#define QOpenGLTexture_Target1D                                      0x0DE0 // GL_TEXTURE_1D
#define QOpenGLTexture_Target1DArray                                 0x8C18 // GL_TEXTURE_1D_ARRAY
#define QOpenGLTexture_Target2D                                      0x0DE1 // GL_TEXTURE_2D
#define QOpenGLTexture_Target2DArray                                 0x8C1A // GL_TEXTURE_2D_ARRAY
#define QOpenGLTexture_Target3D                                      0x806F // GL_TEXTURE_3D
#define QOpenGLTexture_TargetCubeMap                                 0x8513 // GL_TEXTURE_CUBE_MAP
#define QOpenGLTexture_TargetCubeMapArray                            0x9009 // GL_TEXTURE_CUBE_MAP_ARRAY
#define QOpenGLTexture_Target2DMultisample                           0x9100 // GL_TEXTURE_2D_MULTISAMPLE
#define QOpenGLTexture_Target2DMultisampleArray                      0x9102 // GL_TEXTURE_2D_MULTISAMPLE_ARRAY
#define QOpenGLTexture_TargetRectangle                               0x84F5 // GL_TEXTURE_RECTANGLE
#define QOpenGLTexture_TargetBuffer                                  0x8C2A // GL_TEXTURE_BUFFER

/*
enum QOpenGLTexture::BindingTarget
*/
#define QOpenGLTexture_BindingTarget1D                               0x8068 // GL_TEXTURE_BINDING_1D
#define QOpenGLTexture_BindingTarget1DArray                          0x8C1C // GL_TEXTURE_BINDING_1D_ARRAY
#define QOpenGLTexture_BindingTarget2D                               0x8069 // GL_TEXTURE_BINDING_2D
#define QOpenGLTexture_BindingTarget2DArray                          0x8C1D // GL_TEXTURE_BINDING_2D_ARRAY
#define QOpenGLTexture_BindingTarget3D                               0x806A // GL_TEXTURE_BINDING_3D
#define QOpenGLTexture_BindingTargetCubeMap                          0x8514 // GL_TEXTURE_BINDING_CUBE_MAP
#define QOpenGLTexture_BindingTargetCubeMapArray                     0x900A // GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
#define QOpenGLTexture_BindingTarget2DMultisample                    0x9104 // GL_TEXTURE_BINDING_2D_MULTISAMPLE
#define QOpenGLTexture_BindingTarget2DMultisampleArray               0x9105 // GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
#define QOpenGLTexture_BindingTargetRectangle                        0x84F6 // GL_TEXTURE_BINDING_RECTANGLE
#define QOpenGLTexture_BindingTargetBuffer                           0x8C2C // GL_TEXTURE_BINDING_BUFFER

/*
enum QOpenGLTexture::MipMapGeneration
*/
#define QOpenGLTexture_GenerateMipMaps                               0
#define QOpenGLTexture_DontGenerateMipMaps                           1

/*
enum QOpenGLTexture::TextureUnitReset
*/
#define QOpenGLTexture_ResetTextureUnit                              0
#define QOpenGLTexture_DontResetTextureUnit                          1

/*
enum QOpenGLTexture::TextureFormat
*/
#define QOpenGLTexture_NoFormat                                      0      // GL_NONE
#define QOpenGLTexture_R8_UNorm                                      0x8229 // GL_R8
#define QOpenGLTexture_RG8_UNorm                                     0x822B // GL_RG8
#define QOpenGLTexture_RGB8_UNorm                                    0x8051 // GL_RGB8
#define QOpenGLTexture_RGBA8_UNorm                                   0x8058 // GL_RGBA8
#define QOpenGLTexture_R16_UNorm                                     0x822A // GL_R16
#define QOpenGLTexture_RG16_UNorm                                    0x822C // GL_RG16
#define QOpenGLTexture_RGB16_UNorm                                   0x8054 // GL_RGB16
#define QOpenGLTexture_RGBA16_UNorm                                  0x805B // GL_RGBA16
#define QOpenGLTexture_R8_SNorm                                      0x8F94 // GL_R8_SNORM
#define QOpenGLTexture_RG8_SNorm                                     0x8F95 // GL_RG8_SNORM
#define QOpenGLTexture_RGB8_SNorm                                    0x8F96 // GL_RGB8_SNORM
#define QOpenGLTexture_RGBA8_SNorm                                   0x8F97 // GL_RGBA8_SNORM
#define QOpenGLTexture_R16_SNorm                                     0x8F98 // GL_R16_SNORM
#define QOpenGLTexture_RG16_SNorm                                    0x8F99 // GL_RG16_SNORM
#define QOpenGLTexture_RGB16_SNorm                                   0x8F9A // GL_RGB16_SNORM
#define QOpenGLTexture_RGBA16_SNorm                                  0x8F9B // GL_RGBA16_SNORM
#define QOpenGLTexture_R8U                                           0x8232 // GL_R8UI
#define QOpenGLTexture_RG8U                                          0x8238 // GL_RG8UI
#define QOpenGLTexture_RGB8U                                         0x8D7D // GL_RGB8UI
#define QOpenGLTexture_RGBA8U                                        0x8D7C // GL_RGBA8UI
#define QOpenGLTexture_R16U                                          0x8234 // GL_R16UI
#define QOpenGLTexture_RG16U                                         0x823A // GL_RG16UI
#define QOpenGLTexture_RGB16U                                        0x8D77 // GL_RGB16UI
#define QOpenGLTexture_RGBA16U                                       0x8D76 // GL_RGBA16UI
#define QOpenGLTexture_R32U                                          0x8236 // GL_R32UI
#define QOpenGLTexture_RG32U                                         0x823C // GL_RG32UI
#define QOpenGLTexture_RGB32U                                        0x8D71 // GL_RGB32UI
#define QOpenGLTexture_RGBA32U                                       0x8D70 // GL_RGBA32UI
#define QOpenGLTexture_R8I                                           0x8231 // GL_R8I
#define QOpenGLTexture_RG8I                                          0x8237 // GL_RG8I
#define QOpenGLTexture_RGB8I                                         0x8D8F // GL_RGB8I
#define QOpenGLTexture_RGBA8I                                        0x8D8E // GL_RGBA8I
#define QOpenGLTexture_R16I                                          0x8233 // GL_R16I
#define QOpenGLTexture_RG16I                                         0x8239 // GL_RG16I
#define QOpenGLTexture_RGB16I                                        0x8D89 // GL_RGB16I
#define QOpenGLTexture_RGBA16I                                       0x8D88 // GL_RGBA16I
#define QOpenGLTexture_R32I                                          0x8235 // GL_R32I
#define QOpenGLTexture_RG32I                                         0x823B // GL_RG32I
#define QOpenGLTexture_RGB32I                                        0x8D83 // GL_RGB32I
#define QOpenGLTexture_RGBA32I                                       0x8D82 // GL_RGBA32I
#define QOpenGLTexture_R16F                                          0x822D // GL_R16F
#define QOpenGLTexture_RG16F                                         0x822F // GL_RG16F
#define QOpenGLTexture_RGB16F                                        0x881B // GL_RGB16F
#define QOpenGLTexture_RGBA16F                                       0x881A // GL_RGBA16F
#define QOpenGLTexture_R32F                                          0x822E // GL_R32F
#define QOpenGLTexture_RG32F                                         0x8230 // GL_RG32F
#define QOpenGLTexture_RGB32F                                        0x8815 // GL_RGB32F
#define QOpenGLTexture_RGBA32F                                       0x8814 // GL_RGBA32F
#define QOpenGLTexture_RGB9E5                                        0x8C3D // GL_RGB9_E5
#define QOpenGLTexture_RG11B10F                                      0x8C3A // GL_R11F_G11F_B10F
#define QOpenGLTexture_RG3B2                                         0x2A10 // GL_R3_G3_B2
#define QOpenGLTexture_R5G6B5                                        0x8D62 // GL_RGB565
#define QOpenGLTexture_RGB5A1                                        0x8057 // GL_RGB5_A1
#define QOpenGLTexture_RGBA4                                         0x8056 // GL_RGBA4
#define QOpenGLTexture_RGB10A2                                       0x906F // GL_RGB10_A2UI
#define QOpenGLTexture_D16                                           0x81A5 // GL_DEPTH_COMPONENT16
#define QOpenGLTexture_D24                                           0x81A6 // GL_DEPTH_COMPONENT24
#define QOpenGLTexture_D24S8                                         0x88F0 // GL_DEPTH24_STENCIL8
#define QOpenGLTexture_D32                                           0x81A7 // GL_DEPTH_COMPONENT32
#define QOpenGLTexture_D32F                                          0x8CAC // GL_DEPTH_COMPONENT32F
#define QOpenGLTexture_D32FS8X24                                     0x8CAD // GL_DEPTH32F_STENCIL8
#define QOpenGLTexture_RGB_DXT1                                      0x83F0 // GL_COMPRESSED_RGB_S3TC_DXT1_EXT
#define QOpenGLTexture_RGBA_DXT1                                     0x83F1 // GL_COMPRESSED_RGBA_S3TC_DXT1_EXT
#define QOpenGLTexture_RGBA_DXT3                                     0x83F2 // GL_COMPRESSED_RGBA_S3TC_DXT3_EXT
#define QOpenGLTexture_RGBA_DXT5                                     0x83F3 // GL_COMPRESSED_RGBA_S3TC_DXT5_EXT
#define QOpenGLTexture_R_ATI1N_UNorm                                 0x8DBB // GL_COMPRESSED_RED_RGTC1
#define QOpenGLTexture_R_ATI1N_SNorm                                 0x8DBC // GL_COMPRESSED_SIGNED_RED_RGTC1
#define QOpenGLTexture_RG_ATI2N_UNorm                                0x8DBD // GL_COMPRESSED_RG_RGTC2
#define QOpenGLTexture_RG_ATI2N_SNorm                                0x8DBE // GL_COMPRESSED_SIGNED_RG_RGTC2
#define QOpenGLTexture_RGB_BP_UNSIGNED_FLOAT                         0x8E8F // GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB
#define QOpenGLTexture_RGB_BP_SIGNED_FLOAT                           0x8E8E // GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB
#define QOpenGLTexture_RGB_BP_UNorm                                  0x8E8C // GL_COMPRESSED_RGBA_BPTC_UNORM_ARB
#define QOpenGLTexture_SRGB8                                         0x8C41 // GL_SRGB8
#define QOpenGLTexture_SRGB8_Alpha8                                  0x8C43 // GL_SRGB8_ALPHA8
#define QOpenGLTexture_SRGB_DXT1                                     0x8C4C // GL_COMPRESSED_SRGB_S3TC_DXT1_EXT
#define QOpenGLTexture_SRGB_Alpha_DXT1                               0x8C4D // GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT
#define QOpenGLTexture_SRGB_Alpha_DXT3                               0x8C4E // GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT
#define QOpenGLTexture_SRGB_Alpha_DXT5                               0x8C4F // GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT
#define QOpenGLTexture_SRGB_BP_UNorm                                 0x8E8D // GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB
#define QOpenGLTexture_DepthFormat                                   0x1902 // GL_DEPTH_COMPONENT
#define QOpenGLTexture_AlphaFormat                                   0x1906 // GL_ALPHA
#define QOpenGLTexture_RGBFormat                                     0x1907 // GL_RGB
#define QOpenGLTexture_RGBAFormat                                    0x1908 // GL_RGBA
#define QOpenGLTexture_LuminanceFormat                               0x1909 // GL_LUMINANCE
#define QOpenGLTexture_LuminanceAlphaFormat                          0x190A

/*
enum QOpenGLTexture::TextureFormatClass
*/
#define QOpenGLTexture_NoFormatClass                                 0
#define QOpenGLTexture_FormatClass_128Bit                            1
#define QOpenGLTexture_FormatClass_96Bit                             2
#define QOpenGLTexture_FormatClass_64Bit                             3
#define QOpenGLTexture_FormatClass_48Bit                             4
#define QOpenGLTexture_FormatClass_32Bit                             5
#define QOpenGLTexture_FormatClass_24Bit                             6
#define QOpenGLTexture_FormatClass_16Bit                             7
#define QOpenGLTexture_FormatClass_8Bit                              8
#define QOpenGLTexture_FormatClass_RGTC1_R                           9
#define QOpenGLTexture_FormatClass_RGTC2_RG                          10
#define QOpenGLTexture_FormatClass_BPTC_Unorm                        11
#define QOpenGLTexture_FormatClass_BPTC_Float                        12
#define QOpenGLTexture_FormatClass_S3TC_DXT1_RGB                     13
#define QOpenGLTexture_FormatClass_S3TC_DXT1_RGBA                    14
#define QOpenGLTexture_FormatClass_S3TC_DXT3_RGBA                    15
#define QOpenGLTexture_FormatClass_S3TC_DXT5_RGBA                    16
#define QOpenGLTexture_FormatClass_Unique                            17

/*
enum QOpenGLTexture::CubeMapFace
*/
#define QOpenGLTexture_CubeMapPositiveX                              0x8515 // GL_TEXTURE_CUBE_MAP_POSITIVE_X
#define QOpenGLTexture_CubeMapNegativeX                              0x8516 // GL_TEXTURE_CUBE_MAP_NEGATIVE_X
#define QOpenGLTexture_CubeMapPositiveY                              0x8517 // GL_TEXTURE_CUBE_MAP_POSITIVE_Y
#define QOpenGLTexture_CubeMapNegativeY                              0x8518 // GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
#define QOpenGLTexture_CubeMapPositiveZ                              0x8519 // GL_TEXTURE_CUBE_MAP_POSITIVE_Z
#define QOpenGLTexture_CubeMapNegativeZ                              0x851A // GL_TEXTURE_CUBE_MAP_NEGATIVE_Z

/*
enum QOpenGLTexture::PixelFormat
*/
#define QOpenGLTexture_NoSourceFormat                                0      // GL_NONE
#define QOpenGLTexture_Red                                           0x1903 // GL_RED
#define QOpenGLTexture_RG                                            0x8227 // GL_RG
#define QOpenGLTexture_RGB                                           0x1907 // GL_RGB
#define QOpenGLTexture_BGR                                           0x80E0 // GL_BGR
#define QOpenGLTexture_RGBA                                          0x1908 // GL_RGBA
#define QOpenGLTexture_BGRA                                          0x80E1 // GL_BGRA
#define QOpenGLTexture_Red_Integer                                   0x8D94 // GL_RED_INTEGER
#define QOpenGLTexture_RG_Integer                                    0x8228 // GL_RG_INTEGER
#define QOpenGLTexture_RGB_Integer                                   0x8D98 // GL_RGB_INTEGER
#define QOpenGLTexture_BGR_Integer                                   0x8D9A // GL_BGR_INTEGER
#define QOpenGLTexture_RGBA_Integer                                  0x8D99 // GL_RGBA_INTEGER
#define QOpenGLTexture_BGRA_Integer                                  0x8D9B // GL_BGRA_INTEGER
#define QOpenGLTexture_Depth                                         0x1902 // GL_DEPTH_COMPONENT
#define QOpenGLTexture_DepthStencil                                  0x84F9 // GL_DEPTH_STENCIL
#define QOpenGLTexture_Alpha                                         0x1906 // GL_ALPHA
#define QOpenGLTexture_Luminance                                     0x1909 // GL_LUMINANCE
#define QOpenGLTexture_LuminanceAlpha                                0x190A // GL_LUMINANCE_ALPHA

/*
enum QOpenGLTexture::PixelType
*/
#define QOpenGLTexture_NoPixelType                                   0      // GL_NONE
#define QOpenGLTexture_Int8                                          0x1400 // GL_BYTE
#define QOpenGLTexture_UInt8                                         0x1401 // GL_UNSIGNED_BYTE
#define QOpenGLTexture_Int16                                         0x1402 // GL_SHORT
#define QOpenGLTexture_UInt16                                        0x1403 // GL_UNSIGNED_SHORT
#define QOpenGLTexture_Int32                                         0x1404 // GL_INT
#define QOpenGLTexture_UInt32                                        0x1405 // GL_UNSIGNED_INT
#define QOpenGLTexture_Float16                                       0x140B // GL_HALF_FLOAT
#define QOpenGLTexture_Float16OES                                    0x8D61 // GL_HALF_FLOAT_OES
#define QOpenGLTexture_Float32                                       0x1406 // GL_FLOAT
#define QOpenGLTexture_UInt32_RGB9_E5                                0x8C3E // GL_UNSIGNED_INT_5_9_9_9_REV
#define QOpenGLTexture_UInt32_RG11B10F                               0x8C3B // GL_UNSIGNED_INT_10F_11F_11F_REV
#define QOpenGLTexture_UInt8_RG3B2                                   0x8032 // GL_UNSIGNED_BYTE_3_3_2
#define QOpenGLTexture_UInt8_RG3B2_Rev                               0x8362 // GL_UNSIGNED_BYTE_2_3_3_REV
#define QOpenGLTexture_UInt16_RGB5A1                                 0x8034 // GL_UNSIGNED_SHORT_5_5_5_1
#define QOpenGLTexture_UInt16_RGB5A1_Rev                             0x8366 // GL_UNSIGNED_SHORT_1_5_5_5_REV
#define QOpenGLTexture_UInt16_R5G6B5                                 0x8363 // GL_UNSIGNED_SHORT_5_6_5
#define QOpenGLTexture_UInt16_R5G6B5_Rev                             0x8364 // GL_UNSIGNED_SHORT_5_6_5_REV
#define QOpenGLTexture_UInt16_RGBA4                                  0x8033 // GL_UNSIGNED_SHORT_4_4_4_4
#define QOpenGLTexture_UInt16_RGBA4_Rev                              0x8365 // GL_UNSIGNED_SHORT_4_4_4_4_REV
#define QOpenGLTexture_UInt32_RGB10A2                                0x8036 // GL_UNSIGNED_INT_10_10_10_2
#define QOpenGLTexture_UInt32_RGB10A2_Rev                            0x8368 // GL_UNSIGNED_INT_2_10_10_10_REV

/*
enum QOpenGLTexture::Feature
flags QOpenGLTexture::Features
*/
#define QOpenGLTexture_ImmutableStorage                              0x00000001
#define QOpenGLTexture_ImmutableMultisampleStorage                   0x00000002
#define QOpenGLTexture_TextureRectangle                              0x00000004
#define QOpenGLTexture_TextureArrays                                 0x00000008
#define QOpenGLTexture_Texture3D                                     0x00000010
#define QOpenGLTexture_TextureMultisample                            0x00000020
#define QOpenGLTexture_TextureBuffer                                 0x00000040
#define QOpenGLTexture_TextureCubeMapArrays                          0x00000080
#define QOpenGLTexture_Swizzle                                       0x00000100
#define QOpenGLTexture_StencilTexturing                              0x00000200
#define QOpenGLTexture_AnisotropicFiltering                          0x00000400
#define QOpenGLTexture_NPOTTextures                                  0x00000800
#define QOpenGLTexture_NPOTTextureRepeat                             0x00001000
#define QOpenGLTexture_MaxFeatureFlag                                0x00002000

/*
enum QOpenGLTexture::SwizzleComponent
*/
#define QOpenGLTexture_SwizzleRed                                    0x8E42 // GL_TEXTURE_SWIZZLE_R
#define QOpenGLTexture_SwizzleGreen                                  0x8E43 // GL_TEXTURE_SWIZZLE_G
#define QOpenGLTexture_SwizzleBlue                                   0x8E44 // GL_TEXTURE_SWIZZLE_B
#define QOpenGLTexture_SwizzleAlpha                                  0x8E45 // GL_TEXTURE_SWIZZLE_A

/*
enum QOpenGLTexture::SwizzleValue
*/
#define QOpenGLTexture_RedValue                                      0x1903 // GL_RED
#define QOpenGLTexture_GreenValue                                    0x1904 // GL_GREEN
#define QOpenGLTexture_BlueValue                                     0x1905 // GL_BLUE
#define QOpenGLTexture_AlphaValue                                    0x1906 // GL_ALPHA
#define QOpenGLTexture_ZeroValue                                     0      // GL_ZERO
#define QOpenGLTexture_OneValue                                      1      // GL_ONE

/*
enum QOpenGLTexture::DepthStencilMode
*/
#define QOpenGLTexture_DepthMode                                     0x1902 // GL_DEPTH_COMPONENT
#define QOpenGLTexture_StencilMode                                   0x1901 // GL_STENCIL_INDEX

/*
enum QOpenGLTexture::Filter
*/
#define QOpenGLTexture_Nearest                                       0x2600 // GL_NEAREST
#define QOpenGLTexture_Linear                                        0x2601 // GL_LINEAR
#define QOpenGLTexture_NearestMipMapNearest                          0x2700 // GL_NEAREST_MIPMAP_NEAREST
#define QOpenGLTexture_NearestMipMapLinear                           0x2702 // GL_NEAREST_MIPMAP_LINEAR
#define QOpenGLTexture_LinearMipMapNearest                           0x2701 // GL_LINEAR_MIPMAP_NEAREST
#define QOpenGLTexture_LinearMipMapLinear                            0x2703 // GL_LINEAR_MIPMAP_LINEAR

/*
enum QOpenGLTexture::WrapMode
*/
#define QOpenGLTexture_Repeat                                        0x2901 // GL_REPEAT
#define QOpenGLTexture_MirroredRepeat                                0x8370 // GL_MIRRORED_REPEAT
#define QOpenGLTexture_ClampToEdge                                   0x812F // GL_CLAMP_TO_EDGE
#define QOpenGLTexture_ClampToBorder                                 0x812D // GL_CLAMP_TO_BORDER

/*
enum QOpenGLTexture::CoordinateDirection
*/
#define QOpenGLTexture_DirectionS                                    0x2802 // GL_TEXTURE_WRAP_S
#define QOpenGLTexture_DirectionT                                    0x2803 // GL_TEXTURE_WRAP_T
#define QOpenGLTexture_DirectionR                                    0x8072 // GL_TEXTURE_WRAP_R

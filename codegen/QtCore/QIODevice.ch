$header

/*
enum QIODevice::OpenModeFlag
flags QIODevice::OpenMode
*/
#define QIODevice_NotOpen                                            0x0000
#define QIODevice_ReadOnly                                           0x0001
#define QIODevice_WriteOnly                                          0x0002
#define QIODevice_ReadWrite                                          hb_bitor(QIODevice_ReadOnly,QIODevice_WriteOnly)
#define QIODevice_Append                                             0x0004
#define QIODevice_Truncate                                           0x0008
#define QIODevice_Text                                               0x0010
#define QIODevice_Unbuffered                                         0x0020

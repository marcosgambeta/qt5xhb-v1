/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QFileDialog::AcceptMode
*/
#define QFileDialog_AcceptOpen                                       0
#define QFileDialog_AcceptSave                                       1

/*
enum QFileDialog::DialogLabel
*/
#define QFileDialog_LookIn                                           0
#define QFileDialog_FileName                                         1
#define QFileDialog_FileType                                         2
#define QFileDialog_Accept                                           3
#define QFileDialog_Reject                                           4

/*
enum QFileDialog::FileMode
*/
#define QFileDialog_AnyFile                                          0
#define QFileDialog_ExistingFile                                     1
#define QFileDialog_Directory                                        2
#define QFileDialog_ExistingFiles                                    3
#define QFileDialog_DirectoryOnly                                    4

/*
enum QFileDialog::Option
flags QFileDialog::Options
*/
#define QFileDialog_ShowDirsOnly                                     0x00000001
#define QFileDialog_DontResolveSymlinks                              0x00000002
#define QFileDialog_DontConfirmOverwrite                             0x00000004
#define QFileDialog_DontUseSheet                                     0x00000008
#define QFileDialog_DontUseNativeDialog                              0x00000010
#define QFileDialog_ReadOnly                                         0x00000020
#define QFileDialog_HideNameFilterDetails                            0x00000040
#define QFileDialog_DontUseCustomDirectoryIcons                      0x00000080

/*
enum QFileDialog::ViewMode
*/
#define QFileDialog_Detail                                           0
#define QFileDialog_List                                             1

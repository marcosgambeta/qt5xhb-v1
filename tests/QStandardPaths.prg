/*

  Exemplo do projeto Qt5xHb

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail: marcosgambeta@uol.com.br

  Website: https://github.com/marcosgambeta/Qt5xHb

  Grupo de usuários: http://br.groups.yahoo.com/neo/groups/qt4xhb/info

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main ()

   ? "QStandardPaths_DesktopLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_DesktopLocation)

   ? "QStandardPaths_DocumentsLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_DocumentsLocation)

   ? "QStandardPaths_FontsLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_FontsLocation)

   ? "QStandardPaths_ApplicationsLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_ApplicationsLocation)

   ? "QStandardPaths_MusicLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_MusicLocation)

   ? "QStandardPaths_MoviesLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_MoviesLocation)

   ? "QStandardPaths_PicturesLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_PicturesLocation)

   ? "QStandardPaths_TempLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_TempLocation)

   ? "QStandardPaths_HomeLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_HomeLocation)

   ? "QStandardPaths_DataLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_DataLocation)

   ? "QStandardPaths_CacheLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_CacheLocation)

   ? "QStandardPaths_GenericCacheLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_GenericCacheLocation)

   ? "QStandardPaths_GenericDataLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_GenericDataLocation)

   ? "QStandardPaths_RuntimeLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_RuntimeLocation)

   ? "QStandardPaths_ConfigLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_ConfigLocation)

   ? "QStandardPaths_DownloadLocation = "
   ?? QStandardPaths():displayName(QStandardPaths_DownloadLocation)

   WAIT

RETURN

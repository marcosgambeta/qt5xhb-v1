%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDirIterator ( const QDir & dir, IteratorFlags flags = NoIteratorFlags )
$internalConstructor=|new1|const QDir &,QDirIterator::IteratorFlags=QDirIterator::NoIteratorFlags

$prototype=QDirIterator ( const QString & path, IteratorFlags flags = NoIteratorFlags )
$internalConstructor=|new2|const QString &,QDirIterator::IteratorFlags=QDirIterator::NoIteratorFlags

$prototype=QDirIterator ( const QString & path, QDir::Filters filters, IteratorFlags flags = NoIteratorFlags )
$internalConstructor=|new3|const QString &,QDir::Filters,QDirIterator::IteratorFlags=QDirIterator::NoIteratorFlags

$prototype=QDirIterator ( const QString & path, const QStringList & nameFilters, QDir::Filters filters = QDir::NoFilter, IteratorFlags flags = NoIteratorFlags )
$internalConstructor=|new4|const QString &,const QStringList &,QDir::Filters=QDir::NoFilter,QDirIterator::IteratorFlags=QDirIterator::NoIteratorFlags

/*
[1]QDirIterator ( const QDir & dir, IteratorFlags flags = NoIteratorFlags )
[2]QDirIterator ( const QString & path, IteratorFlags flags = NoIteratorFlags )
[3]QDirIterator ( const QString & path, QDir::Filters filters, IteratorFlags flags = NoIteratorFlags )
[4]QDirIterator ( const QString & path, const QStringList & nameFilters, QDir::Filters filters = QDir::NoFilter, IteratorFlags flags = NoIteratorFlags )
*/

%% TODO: resolver conflito entre [2] e [3] quando forem 2 parâmetros

HB_FUNC_STATIC( QDIRITERATOR_NEW )
{
  if( ISBETWEEN(1,2) && ISQDIR(1) && ISOPTNUM(2) )
  {
    QDirIterator_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QDirIterator_new2();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QDirIterator_new3();
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISARRAY(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QDirIterator_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QFileInfo fileInfo () const
$method=|QFileInfo|fileInfo|

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=QString filePath () const
$method=|QString|filePath|

$prototype=bool hasNext () const
$method=|bool|hasNext|

$prototype=QString next ()
$method=|QString|next|

$prototype=QString path () const
$method=|QString|path|

$extraMethods

#pragma ENDDUMP

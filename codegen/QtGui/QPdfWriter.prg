$header

#include "hbclass.ch"

CLASS QPdfWriter INHERIT QObject,QPagedPaintDevice

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD title
   METHOD setTitle
   METHOD creator
   METHOD setCreator
   METHOD newPage
   METHOD setPageSize
   METHOD setPageSizeMM
   METHOD resolution
   METHOD setResolution

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QPdfWriter(const QString & filename)
*/
$InternalConstructor=|new1|const QString &

/*
explicit QPdfWriter(QIODevice * device)
*/
$InternalConstructor=|new2|QIODevice *

//[1]explicit QPdfWriter(const QString & filename)
//[2]explicit QPdfWriter(QIODevice * device)

HB_FUNC_STATIC( QPDFWRITER_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QPdfWriter_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QPdfWriter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString title() const
*/
$method=|QString|title|

/*
void setTitle(const QString & title)
*/
$method=|void|setTitle|const QString &

/*
QString creator() const
*/
$method=|QString|creator|

/*
void setCreator(const QString & creator)
*/
$method=|void|setCreator|const QString &

/*
bool newPage()
*/
$method=|bool|newPage|

/*
void setPageSize(PageSize size)
*/
$method=|void|setPageSize|QPagedPaintDevice::PageSize

/*
void setPageSizeMM(const QSizeF & size)
*/
$method=|void|setPageSizeMM|const QSizeF &

/*
int resolution() const
*/
$method=|int|resolution|

/*
void setResolution(int resolution)
*/
$method=|void|setResolution|int

#pragma ENDDUMP

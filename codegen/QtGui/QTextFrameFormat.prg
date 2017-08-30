$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QTEXTLENGTH
#endif

CLASS QTextFrameFormat INHERIT QTextFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setPosition
   METHOD position
   METHOD setBorder
   METHOD border
   METHOD setBorderBrush
   METHOD borderBrush
   METHOD setBorderStyle
   METHOD borderStyle
   METHOD setMargin
   METHOD margin
   METHOD setTopMargin
   METHOD topMargin
   METHOD setBottomMargin
   METHOD bottomMargin
   METHOD setLeftMargin
   METHOD leftMargin
   METHOD setRightMargin
   METHOD rightMargin
   METHOD setPadding
   METHOD padding
   METHOD setWidth
   METHOD width
   METHOD setHeight
   METHOD height
   METHOD setPageBreakPolicy
   METHOD pageBreakPolicy

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextFrameFormat()
*/
$constructor=|new|

$deleteMethod

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
void setPosition(Position f)
*/
$method=|void|setPosition|QTextFrameFormat::Position

/*
Position position() const
*/
$method=|QTextFrameFormat::Position|position|

/*
void setBorder(qreal border)
*/
$method=|void|setBorder|qreal

/*
qreal border() const
*/
$method=|qreal|border|

/*
void setBorderBrush(const QBrush &brush)
*/
$method=|void|setBorderBrush|const QBrush &

/*
QBrush borderBrush() const
*/
$method=|QBrush|borderBrush|

/*
void setBorderStyle(BorderStyle style)
*/
$method=|void|setBorderStyle|QTextFrameFormat::BorderStyle

/*
BorderStyle borderStyle() const
*/
$method=|QTextFrameFormat::BorderStyle|borderStyle|

/*
void setMargin(qreal margin)
*/
$method=|void|setMargin|qreal

/*
qreal margin() const
*/
$method=|qreal|margin|

/*
void setTopMargin(qreal margin)
*/
$method=|void|setTopMargin|qreal

/*
qreal topMargin() const
*/
$method=|qreal|topMargin|

/*
void setBottomMargin(qreal margin)
*/
$method=|void|setBottomMargin|qreal

/*
qreal bottomMargin() const
*/
$method=|qreal|bottomMargin|

/*
void setLeftMargin(qreal margin)
*/
$method=|void|setLeftMargin|qreal

/*
qreal leftMargin() const
*/
$method=|qreal|leftMargin|

/*
void setRightMargin(qreal margin)
*/
$method=|void|setRightMargin|qreal

/*
qreal rightMargin() const
*/
$method=|qreal|rightMargin|

/*
void setPadding(qreal padding)
*/
$method=|void|setPadding|qreal

/*
qreal padding() const
*/
$method=|qreal|padding|

/*
void setWidth(qreal width)
*/
$internalMethod=|void|setWidth,setWidth1|qreal

/*
void setWidth(const QTextLength &length)
*/
$internalMethod=|void|setWidth,setWidth2|const QTextLength &

//[1]void setWidth(qreal width)
//[2]void setWidth(const QTextLength &length)

HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETWIDTH )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextFrameFormat_setWidth1();
  }
  else if( ISNUMPAR(1) && ISQTEXTLENGTH(1) )
  {
    QTextFrameFormat_setWidth2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextLength width() const
*/
$method=|QTextLength|width|

/*
void setHeight(qreal height)
*/
$internalMethod=|void|setHeight,setHeight1|qreal

/*
void setHeight(const QTextLength &height)
*/
$internalMethod=|void|setHeight,setHeight2|const QTextLength &

//[1]void setHeight(qreal height)
//[2]void setHeight(const QTextLength &height)

HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETHEIGHT )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextFrameFormat_setHeight1();
  }
  else if( ISNUMPAR(1) && ISQTEXTLENGTH(1) )
  {
    QTextFrameFormat_setHeight2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextLength height() const
*/
$method=|QTextLength|height|

/*
void setPageBreakPolicy(PageBreakFlags flags)
*/
$method=|void|setPageBreakPolicy|QTextFrameFormat::PageBreakFlags

/*
PageBreakFlags pageBreakPolicy() const
*/
$method=|QTextFrameFormat::PageBreakFlags|pageBreakPolicy|

#pragma ENDDUMP

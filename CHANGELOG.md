# Changelog

## 1.23.0 [24.07.2018]
- Add Element.onContextMenu

## 1.22.0
- Add Node.parent, Element.tagName; add CssDeclaration .overflowX/Y

## 1.21.0
- Add AnchorElement and Element.click()

## 1.20.0
- Add alt/shift-keys flags and keyCode field to keyboard event

## 1.19.0
- Add return type to window.open()

## 1.18.0
- Add Element.onKeyUp

## 1.17.0
- Add file and blob classes to use in server http adapter implementation

## 1.16.0
- Add Document.onClick and Element.onClick

## 1.15.0
- Add window.navigator, evt.metaKey for both MouseEvent and KeyboardEvent, evt.ctrlKey for KeyboardEvent, and evt.button for MouseEvent

## 1.14.0
- Add Document.body,Node.append(), IFrameElement, CssStyleDeclaration.display, CssClassSet implements  Set<String>

## 1.13.0
- Add Window.document, Element.setInnerHtml, Element.appendHtml, Document.getElementsByTagName 

## 1.12.0
- Add Location.reload()

## 1.11.0
- Add CssStyleDeclaration.letterSpacing

## 1.10.0
- Add Element.hidden

## 1.9.1
- Fix CanvasRenderingContext2D.globalCompositeOperation added to interface to

## 1.9.0
- Add CanvasRenderingContext2D.globalCompositeOperation

## 1.8.0
- Add KeyboardEvent

## 1.7.0
- Add MouseEvent.client
- Add Element.getBoundingClientRect
- Add Element.classes
- Add CssStyleDeclaration.top

## 1.6.0
- Add default implementation of CanvasElement with basically initialized fields
- Add default mouse and scroll event streams
- Add CanvasRenderingContext2D.quadraticCurveTo

## 1.5.6
- Add Element.focus()

## 1.5.5
- Add Element.onDoubleClick
- Add Document with onMouseDown, onMouseMove, onMouseLeave, onMouseUp, onMouseWheel, onDoubleClick
- Add to Node: ownerDocument

## 1.5.4
- Add Element.scrollHeight and Element.scrollWidth

## 1.5.3
- Add CanvasRenderingContext2D.rotate

## 1.5.2
- Fixed all hints of dart analyzer
- Add .travis.yaml and Travis status to README
- Suppress error with missing function "_fromBrowserObject(object);" in lib/io/js/src/js_object.dart

## 1.5.1
- Fixed bunch of dart errors 

## 1.5.0
- Add browser_detect_i with Browser
- Add querySelector
- Add to Window: devicePixelRatio, onResize, animationFrame
- Add to Element: onMouseDown, onMouseMove, onMouseLeave, onMouseUp, onScroll, onMouseWhee, scrollTop, clientWidth, clientHeight, offsetWidth, scrollLeft, style
- Add UIEvent, MouseEvent, WheelEvent, TextMetrics, CanvasPattern, CanvasRenderingContext2D , HtmlElement, CssStyleDeclaration, CssClassSet, CanvasElement


## 1.4.0

- Add allowInterop, allowInteropCaptureThis
- Add Window.Location interface

## 1.3.0
- Add window.sessionStorage

## 1.2.0
- Add window.open method

## 1.0.0

- Initial version, created by Stagehand
- initial dart:html
- initial dart:js
- initial package:js

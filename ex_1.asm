; ex_1.asm

			.model 		tiny  				; Модель памяти, используемая для СОМ.
			.code							; Начало сегмента кода.
			org 		100h				; Начальное значение счетчика - 100h.
start: 		mov 		ah, 9				; Номер функции DOS - в АН.
			mov 		dx, offset msg		; Адрес строки - в DX.
			int 		21h					; Вызов системной функции DOS.
			ret								; Завершение СОМ-программы.
msg			db			"HelloWorld!", 0Dh, 0Ah,'$' ; Строка для вывода.
			end			start 				; Конец программы.

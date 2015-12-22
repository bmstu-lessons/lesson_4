; ex_2.asm

			.model		small  				; Модель памяти, используемая для ЕХЕ.
			.stack		100h				; Сегмент стека размеромв 256 байт.
			.code
start:		mov 		ax, DGROUP			; Сегментный адрес строки message
			mov 		ds, ax				; помещается в DS
			mov 		dx, offset msg
			mov 		ah, 9
			int			21h
			mov 		ax, 4C00h
			int 		21h					; Функция DOS "завершить программу".
			.data
￼￼￼￼￼msg			db			"HelloWorld!", 0Dh, 0Ah,'$' ; Строка для вывода.
			end 		start 				; Конец программы.

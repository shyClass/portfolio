DELETE flights;

INSERT INTO flights VALUES('A01', '아시아나항공', '인천', '홍콩', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191113', 'YYYYMMDD'), '09:00', '12:00');
INSERT INTO flights VALUES('A02', '대한항공', '인천', '홍콩', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191113', 'YYYYMMDD'), '11:00', '14:00');
INSERT INTO flights VALUES('A03', '대한항공', '인천', '홍콩', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191113', 'YYYYMMDD'), '13:00', '16:00');
INSERT INTO flights VALUES('A04', '아시아나항공', '인천', '홍콩', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191113', 'YYYYMMDD'), '16:00', '19:00');
INSERT INTO flights VALUES('A05', '아시아나항공', '인천', '홍콩', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191113', 'YYYYMMDD'), '19:00', '21:00');

INSERT INTO flights VALUES('A11', '아시아나항공', '인천', '홍콩', TO_DATE('20191113', 'YYYYMMDD'), TO_DATE('20191115', 'YYYYMMDD'), '09:00', '12:00');
INSERT INTO flights VALUES('A12', '에어캐나다', '인천', '홍콩', TO_DATE('20191113', 'YYYYMMDD'), TO_DATE('20191115', 'YYYYMMDD'), '11:00', '14:00');
INSERT INTO flights VALUES('A13', '유나이티드항공', '인천', '홍콩', TO_DATE('20191113', 'YYYYMMDD'), TO_DATE('20191115', 'YYYYMMDD'), '13:00', '16:00');
INSERT INTO flights VALUES('A14', '에어캐나다', '인천', '홍콩', TO_DATE('20191113', 'YYYYMMDD'), TO_DATE('20191115', 'YYYYMMDD'), '16:00', '19:00');
INSERT INTO flights VALUES('A15', '아시아나항공', '인천', '홍콩', TO_DATE('20191113', 'YYYYMMDD'), TO_DATE('20191115', 'YYYYMMDD'), '19:00', '21:00');

INSERT INTO flights VALUES('B01', '대한항공', '제주', '오키나와', TO_DATE('20191113', 'YYYYMMDD'), TO_DATE('20191115', 'YYYYMMDD'), '09:00', '12:00');
INSERT INTO flights VALUES('B02', '아시아나항공', '제주', '오키나와', TO_DATE('20191113', 'YYYYMMDD'), TO_DATE('20191115', 'YYYYMMDD'), '11:00', '14:00');
INSERT INTO flights VALUES('B03', '아시아나항공', '제주', '오키나와', TO_DATE('20191120', 'YYYYMMDD'), TO_DATE('20191122', 'YYYYMMDD'), '13:00', '16:00');
INSERT INTO flights VALUES('B04', '대한항공', '제주', '오키나와', TO_DATE('20191120', 'YYYYMMDD'), TO_DATE('20191122', 'YYYYMMDD'), '16:00', '19:00');
INSERT INTO flights VALUES('B05', '대한항공', '제주', '오키나와', TO_DATE('20191120', 'YYYYMMDD'), TO_DATE('20191122', 'YYYYMMDD'), '19:00', '21:00');

INSERT INTO flights VALUES('C01', '에어캐나다', '런던', '오타와', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191112', 'YYYYMMDD'), '09:00', '12:00');
INSERT INTO flights VALUES('C02', '유나이티드항공', '런던', '오타와', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191112', 'YYYYMMDD'), '11:00', '14:00');
INSERT INTO flights VALUES('C03', '유나이티드항공', '런던', '뉴욕', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191122', 'YYYYMMDD'), '13:00', '16:00');
INSERT INTO flights VALUES('C04', '에어캐나다', '런던', '뉴욕', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191122', 'YYYYMMDD'), '16:00', '19:00');
INSERT INTO flights VALUES('C05', '에어캐나다', '런던', '뉴욕', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191122', 'YYYYMMDD'), '19:00', '21:00');

INSERT INTO flights VALUES('D01', '유나이티드항공', '런던', '상하이', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191113', 'YYYYMMDD'), '09:00', '12:00');
INSERT INTO flights VALUES('D02', '에어캐나다', '런던', '상하이', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191113', 'YYYYMMDD'), '11:00', '14:00');
INSERT INTO flights VALUES('D03', '대한항공', '런던', '멜버른', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191113', 'YYYYMMDD'), '13:00', '16:00');
INSERT INTO flights VALUES('D04', '유나이티드항공', '런던', '멜버른', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191113', 'YYYYMMDD'), '16:00', '19:00');
INSERT INTO flights VALUES('D05', '아시아나항공', '런던', '멜버른', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191113', 'YYYYMMDD'), '19:00', '21:00');

INSERT INTO flights VALUES('D11', '유나이티드항공', '런던', '제주', TO_DATE('20191113', 'YYYYMMDD'), TO_DATE('20191115', 'YYYYMMDD'), '09:00', '12:00');
INSERT INTO flights VALUES('D12', '대한항공', '런던', '제주', TO_DATE('20191113', 'YYYYMMDD'), TO_DATE('20191115', 'YYYYMMDD'), '11:00', '14:00');
INSERT INTO flights VALUES('D13', '유나이티드항공', '런던', '제주', TO_DATE('20191113', 'YYYYMMDD'), TO_DATE('20191115', 'YYYYMMDD'), '13:00', '16:00');
INSERT INTO flights VALUES('D14', '유나이티드항공', '런던', '라스베이거스', TO_DATE('20191113', 'YYYYMMDD'), TO_DATE('20191115', 'YYYYMMDD'), '16:00', '19:00');
INSERT INTO flights VALUES('D15', '유나이티드항공', '런던', '라스베이거스', TO_DATE('20191113', 'YYYYMMDD'), TO_DATE('20191115', 'YYYYMMDD'), '19:00', '21:00');

INSERT INTO flights VALUES('E01', '대한항공', '라스베이거스', '뉴욕', TO_DATE('20191113', 'YYYYMMDD'), TO_DATE('20191115', 'YYYYMMDD'), '09:00', '12:00');
INSERT INTO flights VALUES('E02', '에어캐나다', '라스베이거스', '뉴욕', TO_DATE('20191113', 'YYYYMMDD'), TO_DATE('20191115', 'YYYYMMDD'), '11:00', '14:00');
INSERT INTO flights VALUES('E03', '에어캐나다', '라스베이거스', '뉴욕', TO_DATE('20191120', 'YYYYMMDD'), TO_DATE('20191122', 'YYYYMMDD'), '13:00', '16:00');
INSERT INTO flights VALUES('E04', '대한항공', '라스베이거스', '오타와', TO_DATE('20191120', 'YYYYMMDD'), TO_DATE('20191122', 'YYYYMMDD'), '16:00', '19:00');
INSERT INTO flights VALUES('E05', '대한항공', '라스베이거스', '오타와', TO_DATE('20191120', 'YYYYMMDD'), TO_DATE('20191122', 'YYYYMMDD'), '19:00', '21:00');

INSERT INTO flights VALUES('F01', '에어캐나다', '홍콩', '인천', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191112', 'YYYYMMDD'), '09:00', '12:00');
INSERT INTO flights VALUES('F02', '유나이티드항공', '홍콩', '인천', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191112', 'YYYYMMDD'), '11:00', '14:00');
INSERT INTO flights VALUES('F03', '유나이티드항공', '홍콩', '김포', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191122', 'YYYYMMDD'), '13:00', '16:00');
INSERT INTO flights VALUES('F04', '에어캐나다', '홍콩', '김포', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191122', 'YYYYMMDD'), '16:00', '19:00');
INSERT INTO flights VALUES('F05', '아시아나항공', '홍콩', '제주', TO_DATE('20191111', 'YYYYMMDD'), TO_DATE('20191122', 'YYYYMMDD'), '19:00', '21:00');

COMMIT;
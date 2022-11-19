def main(filename:str):
    with open(filename,'r') as file:
        datas=file.readlines()
        datas=list(map(lambda x:x.replace('<','^<'),datas))
        datas=list(map(lambda x:x.replace('>','^>'),datas))
        datas=list(map(lambda x:x.replace('%','%%'),datas))
        datas=list(map(lambda x:x.replace('(','^('),datas))
        datas=list(map(lambda x:x.replace(')','^)'),datas))
        datas=list(map(lambda x:'echo '+x,datas))
        with open(f'{filename}.bat','w') as batfile:
            batfile.write('@echo off\n(\n')
            batfile.writelines(datas)
            batfile.write(f')>{filename}')

if __name__ == '__main__':
    main('test.txt')
require('pg')


class SqlRunnerequire

    def self.run(sql, values = [])
        begin 
            db = PG.connect({dbname: "music_collector", host: 'localhost'})
            db.prepare("query", sql)
            result = db.exec_prepared("query", values)
        ensure
            db.close() if db != nil
        end
        return result
    end
    
end
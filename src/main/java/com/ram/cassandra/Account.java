package com.ram.cassandra;

import com.datastax.driver.mapping.annotations.Column;
import com.datastax.driver.mapping.annotations.Frozen;
import com.datastax.driver.mapping.annotations.PartitionKey;
import com.datastax.driver.mapping.annotations.Table;
import com.google.common.base.Objects;

@Table(keyspace = "complex", name = "accounts")
public class Account {
    @PartitionKey
    private String email;
    private String name;
    @Column (name = "addr")
    @Frozen
    private Address address;

    public Account() {
    }

    public Account(String name, String email, Address address) {
        this.name = name;
        this.email = email;
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }
    
    @Override
    public boolean equals(Object other) {
        if (other instanceof Account) {
            Account that = (Account) other;
            return Objects.equal(this.name, that.name) &&
                   Objects.equal(this.email, that.email);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(name, email);
    }
}
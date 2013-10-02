package eclinic

import org.apache.commons.lang.builder.HashCodeBuilder

class AdminAuthority implements Serializable {

	Admin admin
	Authority authority

	boolean equals(other) {
		if (!(other instanceof AdminAuthority)) {
			return false
		}

		other.admin?.id == admin?.id &&
			other.authority?.id == authority?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (admin) builder.append(admin.id)
		if (authority) builder.append(authority.id)
		builder.toHashCode()
	}

	static AdminAuthority get(long adminId, long authorityId) {
		find 'from AdminAuthority where admin.id=:adminId and authority.id=:authorityId',
			[adminId: adminId, authorityId: authorityId]
	}

	static AdminAuthority create(Admin admin, Authority authority, boolean flush = false) {
		new AdminAuthority(admin: admin, authority: authority).save(flush: flush, insert: true)
	}

	static boolean remove(Admin admin, Authority authority, boolean flush = false) {
		AdminAuthority instance = AdminAuthority.findByAdminAndAuthority(admin, authority)
		if (!instance) {
			return false
		}

		instance.delete(flush: flush)
		true
	}

	static void removeAll(Admin admin) {
		executeUpdate 'DELETE FROM AdminAuthority WHERE admin=:admin', [admin: admin]
	}

	static void removeAll(Authority authority) {
		executeUpdate 'DELETE FROM AdminAuthority WHERE authority=:authority', [authority: authority]
	}

	static mapping = {
		id composite: ['authority', 'admin']
		version false
	}
}

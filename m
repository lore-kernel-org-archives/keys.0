Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A70F214EC73
	for <keys@linux.kernel.org>; Wed, 25 Mar 2026 00:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774399795; cv=none; b=GYXwrgXwarHmH197EmldVrQHSzi5Dw7g3h8JyzqmhDLsmPn9SES4WBJ5CYOmvM9aXbiukZBVzxsix5WBUPCh8XeWwZ//GWMD4MNbUkg5sgnKT20Oc1wqAo++iWRrdvsjl8hoiUW3u9Xoml0fiUKinRR5CkSg6mDkl6ZY4vdnkQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774399795; c=relaxed/simple;
	bh=wFe9kF+UtOC6WQy4XvKbW4LxpbTjsaE7xaapOM7UXkY=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=TGFAtcxxZFz1m9I01VkhwEZ4BBzEhukveKTg23OFwhnxQnpvJKT0e0IReqXRUj6ZwDuEiKpb33nS/P3s1RI/ZjaLCJvRZO1kqgWYzcP4ivF95dOFGDPZ2Q94Vj0DdG+mgEixRuYpU8uUCl88/hION7qQ4zwkERznQaetLjT1yj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjR7Qczh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjR7Qczh"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09898C19424
	for <keys@linux.kernel.org>; Wed, 25 Mar 2026 00:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774399795;
	bh=wFe9kF+UtOC6WQy4XvKbW4LxpbTjsaE7xaapOM7UXkY=;
	h=Date:From:To:Subject:From;
	b=TjR7Qczh1o1daOEJUthX5tKTeeAXrCrehiPesXOWf+uNym1i/v1e2EPq/pYUG7QeE
	 7Gm5WGZV7YL1NarPh5jFxMI1JjP9TCUTd9IGLG4reRgd8lLLeW1X0BFxBDeeJlLiy1
	 HMwTqzoCKExbisncvjZp/4a3WlVqlwVdaQSDrORqXSgWdpIS8SlIssuf9rplSvs66M
	 cZmAOQtyduMEDg6EUoxbJNsbHQKJYgXuBjk62msMvMuhK4tr1OSld7d4DFsdOMFkeb
	 UsvRKF4mvAJgpXaJNtWLebk3s5WnbFliRcU03Dahys9ej4cgzVA5u4Wy6xzoCxobEB
	 VHG/IVNIsbqZA==
Date: Tue, 24 Mar 2026 20:49:53 -0400
From: Sasha Levin <sashal@kernel.org>
To: keys@linux.kernel.org
Subject: Replacement GPG key for Sasha Levin
Message-ID: <acMxMeih6N9OVzCg@laps>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="LYpTu9JSZATGtp0I"
Content-Disposition: inline


--LYpTu9JSZATGtp0I
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

Hi folks,

Please add my new ed25519 GPG key to the keyring, replacing my old RSA-4096 key
(E27E5D8A3403A2EF66873BBCDEA66FF797772CDC). The new key is cross-signed by the
old one.

-- 
Thanks,
Sasha

--LYpTu9JSZATGtp0I
Content-Type: application/pgp-keys
Content-Disposition: attachment;
	filename="new-key-57AB7D308C6C3472B80615F19ECABE406425237A.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

mDMEacMoBRYJKwYBBAHaRw8BAQdAJpTDf4r8yA/pnF/sheP3GDs+TykKrxM0wHuU
r1mUqZG0H1Nhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz6IkAQTFgoAOBYh
BFerfTCMbDRyuAYV8Z7KvkBkJSN6BQJpwygFAhsBBQsJCAcCBhUKCQgLAgQWAgMB
Ah4BAheAAAoJEJ7KvkBkJSN6+3AA/A2XOMbPoa8JJSC6INy++XbjZoJKhx6MbWtq
IK3todMwAPsFYwUNes5Dj8USz4aIQdsYuwz9o1w5w7xPtBZl0oB6DYkCMwQQAQoA
HRYhBOJ+XYo0A6LvZoc7vN6mb/eXdyzcBQJpwyj0AAoJEN6mb/eXdyzcj/EP/jGK
T1e+Ur19dUZLi8uYWjbCs5rafS3Aw9wGir2LYi8JtY04kc44UyzCjrtf3GJfEEpo
sTUelPyjKBSGD/4MoIkZPCt3L2r0XCM8Mpq1JK83Z1UtOuF0bAifUxbJBzVMID/o
vfIhqo9kSIIItNIm/lrJgIHHAc24fS/nBLnvzDf85eYo5MNPHroKJhEKF0S/EnCi
vDtVtkTR6GO9S9Eixd2MwRQXhx5S1elJMs36mRn6MVEK18UfZ6bKBKW+1XkdY0Qf
VLWEzbrUlvIV4RhFqusGOJ6OPZ9Z/d80qi48/G8MK96J9JWL32gwiKCd99cBjfb6
s8ppHVqjvVpKwDCl+izp2K8kHlND3q5oZLxzwu98nOjrf0tCfCyJt0KAhVGygQGF
yyIr0B0F9IWuk2+RlQrJa0l5j7Zgq/RQc9+U7JJYYa1ErvTmcm5fpWm2VB3r0ql0
f+FZ2cvOE/xgjcpXakc+8tcgfTw0V/a0P4yjfwlCt7ivqB1maHhVln6XG2K4VdYz
P9lh3TNz+JyVBI91pRveWQVo/jlSbMT5SSY2qDZBHGAVIJJhuivEcwzUULa1BBUi
ali+BVyS2WX7dDNwqeETz4lZY967QYVoR3LxCpYwwdgGgyEOwNR3w69TAlvpa0LZ
ZotJxMYaxAVgQf7jfmxdiKCTG58CSqfOCNYp9F0ouDMEacMoRBYJKwYBBAHaRw8B
AQdAmdfRxNiqPSvL5ZbJOc5c0M3Xku1Zom/gUKHxld80W5OI7wQYFgoAIBYhBFer
fTCMbDRyuAYV8Z7KvkBkJSN6BQJpwyhEAhsCAIEJEJ7KvkBkJSN6diAEGRYKAB0W
IQTVpRROofrDDt3nbjmIZA9ls43M1QUCacMoRAAKCRCIZA9ls43M1S8kAP96hU1B
CD0GmX30v41e3FdS7nJVdnFB8FKffkYBzXShaAEA6pkHyyUZ0TTYgQ+Arb2DMAEo
Jnae30rH/o23+kv6GA+HCwEArsxx6aB69/E7FkI4GhBJLJjAaFpKSyFdJeROA6mf
j1IA/i53UxkbSvP+mGUi/3KRdTWQXu1IIz9NWXgfTuwc2a8DuDgEacMocBIKKwYB
BAGXVQEFAQEHQLSzIqNbMK2nhcSBEPHiXPfSTsL4HEPg0mjHJVxnGgZRAwEIB4h4
BBgWCgAgFiEEV6t9MIxsNHK4BhXxnsq+QGQlI3oFAmnDKHACGwwACgkQnsq+QGQl
I3qPjAD/XHCO6nYePawMRfAUhJKxAfBV7a+45zYoZm8Wd/O1J/YBAKYQjV+2gNp9
UBoXx7utuiscwqRDmeeShrG5dJN7uYIK
=ejb7
-----END PGP PUBLIC KEY BLOCK-----

--LYpTu9JSZATGtp0I--

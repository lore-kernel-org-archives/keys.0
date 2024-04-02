Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E38312BF23
	for <keys@linux.kernel.org>; Tue,  2 Apr 2024 15:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712070821; cv=none; b=SNWgD5do1kzqtGyCO3n5knnOT6Nac8gTrxSiwlf4BMLxaNLtkti1gn1nDwenlToAA6c+OA4imdM9lFAns8YvrFGcz9TFwuAl0cRh+WDwgQiy4LkkgCkG2AdP3Tp5/3A3pXpfGk4o5FOLNdz+TrjI51k0ORPCjZNy/mkYcpF+71g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712070821; c=relaxed/simple;
	bh=H0d06O+x5jlPvY6+atX8bMsFi08VPQ6q5WHnN1oAkqQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BZqvuBcpkdoi+VFuesV2inbSaXJMhZijZULArWUi+vNtIl4pXGK+BKxe6gklMHpaoCQLvz6ERcSO1bpMXIVPs5/IPJNgBSRVNoJcWeWMZLo6TxEcALLfhrRWFyJaSw8Z4IC6NPpzV/lowf1Tnc2+6vMoCoj6BwnJxauhC8fi8EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=UOxcU9dV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="UOxcU9dV"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69320C433C7;
	Tue,  2 Apr 2024 15:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1712070820;
	bh=H0d06O+x5jlPvY6+atX8bMsFi08VPQ6q5WHnN1oAkqQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UOxcU9dVxFh6gZw8zOb7XRp2D7zBzNQJDfsFj+RFObXI8iUFOE7Y3v0NH/DTjGwSR
	 Ib3axdCy3iSUkdvdBYCfJxS0u3CfgfX9ce35PiP8cx5CE4FuxCjab3S1TqSH+JtZtU
	 ld2h9l8/dlbfPr+rU8DHzccRbndADQDYI9AsTG9A=
Date: Tue, 2 Apr 2024 11:13:39 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Theodore Ts'o <tytso@mit.edu>
Cc: keys@linux.kernel.org
Subject: Re: Update tytso's key
Message-ID: <20240402-brown-lion-of-romance-afaeeb@lemur>
References: <20240402041931.GA2062089@mit.edu>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240402041931.GA2062089@mit.edu>

On Tue, Apr 02, 2024 at 12:19:31AM -0400, Theodore Ts'o wrote:
> I updated my PGP key's expiration date, and I uploaded it to
> keys.openpgp.org, but I haven't seen a periodic update key the
> keyserver, so I'm sending it to keys@linux.kernel.org, although docs[1]
> seem to imply that sending the key to the openpgp keyservers should be
> enough.  (Or maybe the openpgp keyservers are flaky; I don't really
> trust them these days...)

I do run periodic updates, but they usually take a long time to complete, so I
only do this once every few weeks.

Your key in our keyring has been updated.

-K

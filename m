Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB3241C6B
	for <keys@linux.kernel.org>; Tue, 28 Nov 2023 18:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="UiGwlrF5"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A0B0C433C8;
	Tue, 28 Nov 2023 18:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1701195185;
	bh=Iz6lXxkaTizNGcNP1Wp9xnNPFltwMyFjIwZ9xRm5134=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UiGwlrF5kjeH28h8wigqkCsnqacYZ8LgowlWRRoUqlS832J3OkPwkBG6zV36CnUzr
	 AFw+2EXZ8L8a8eRUbTnTqHIUlq0LvARE/aFtouQZyHOSjPMHGobWi86rLHhcM5TdbQ
	 cJFH9Y+dhYyaYbHfUNwVQWNk5mPUWxldnR1rzfmQ=
Date: Tue, 28 Nov 2023 13:13:04 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: keys@linux.kernel.org
Subject: Re: Replacement PGP key
Message-ID: <20231128-dalmatian-of-ultimate-coffee-46d101@meerkat>
References: <bebebc27-f20a-4c30-9fc1-9de85a009249@zytor.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <bebebc27-f20a-4c30-9fc1-9de85a009249@zytor.com>

On Wed, Nov 15, 2023 at 09:13:35PM -0800, H. Peter Anvin wrote:
> Initial version of my replacement PGP key, currently signed by Linus and
> James Bottomley; more signatures coming.

Updated, thanks. I assume you'd also like to re-issue your ssh credentials?

-K

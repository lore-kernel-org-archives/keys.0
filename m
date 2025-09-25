Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFAB6323F7F
	for <keys@linux.kernel.org>; Thu, 25 Sep 2025 20:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758830664; cv=none; b=Kd5z1wZqB8LEzFpH3fVXpqsKx0BTUtS2qwL04CKbhSXglpHZhBxCzdkPXR3r5K9cCpzwqtmekrvBRazd9r5eSN2tlC9UVIlgA8Ps9gOSDLT78RpHN+nWEVg7g2jyMQypAKM+FROVdgEOHO3ICy2lUSv0niwlvM9jWyHxqMBoPwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758830664; c=relaxed/simple;
	bh=N7sNpN5eydjnTQHZqOcoefo7Z3lBr532soJnCydFEMI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PD4zW9arb7yeLfvN+iW4wWiWXmVNdwx6srauD3sG+e/yIM9uQX4eRciUmf4b5nb1yAQkMCmROYp2C4YLa8Ddg2pSwBnuRiLj2Th9WIe2AfIN2njX/JLFe0CeIE89L0tJrwYhXmXdh7GzYqe6KJnJTmYI+8wAF4INZkUP1KIfwio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=t3q+8QJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="t3q+8QJt"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFB07C4CEF7;
	Thu, 25 Sep 2025 20:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1758830664;
	bh=N7sNpN5eydjnTQHZqOcoefo7Z3lBr532soJnCydFEMI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t3q+8QJtAEy8/M9tq5AOE47N5wg4TZzZ/pjPTvG5wWZwLhHs7TUiTYhIDEETZ80Vs
	 gVUvddwiKZRc4NdJO77m54te8hTmgzj/VJg37J5GnZT7xAXndzhSE/qoNoQcIptnUF
	 noK9Wb17MWon2UvE6Ek+thczyRAhiUTePVvpHfJY=
Date: Thu, 25 Sep 2025 16:04:22 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Joseph Salisbury <joseph.salisbury@oracle.com>
Cc: keys@linux.kernel.org
Subject: Re: joseph.salisbury@oracle.com
Message-ID: <20250925-hysterical-hornet-of-courtesy-f20c7a@lemur>
References: <1afc11a7-b47d-4888-b348-92c9a77c85e6@oracle.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1afc11a7-b47d-4888-b348-92c9a77c85e6@oracle.com>

On Thu, Sep 25, 2025 at 12:38:21PM -0400, Joseph Salisbury wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Thanks, updated.

However, there is a different problem now. All of the signatures from
kernel.org developers that are on your key are done using the sha1 algo, which
means that we no longer accept them for the web of trust purposes. This
effectively makes your key orphaned.

It's a larger overarching problem that we'll work to address, but if you want
to be proactive, you could try to find someone who can sign (or re-sign) your
key for you to get you back into the WoT.

-K
